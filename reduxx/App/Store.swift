//
//  Store.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Combine
import Foundation
import SwiftUI

typealias Reducer<State> = (State, Action) -> State
typealias Middleware<State> = (State, Action) -> AnyPublisher<Action, Never>

protocol Action { }
enum Middlewares { }

class Store<State>: ObservableObject {
    @Published var state: State
    private let reducer: Reducer<State>
    private let middlewares: [Middleware<State>]
    private let queue = DispatchQueue(label: "reduxx.store", qos: .userInitiated)
    private var subscriptions: [UUID: AnyCancellable] = [:]
    
    init(state: State, reducer: @escaping Reducer<State>, middlewares: [Middleware<State>] = []) {
        self.state = state
        self.reducer = reducer
        self.middlewares = middlewares
    }
    
    func dispatch(_ action: Action) {
        queue.sync {
            self.dispatch(self.state, action)
        }
    }
    
    private func dispatch(_ currentState: State, _ action: Action) {
        let newState = reducer(currentState, action)
        
        middlewares.forEach { middleware in
            let key = UUID()
            middleware(newState, action)
                .receive(on: RunLoop.main)
                .handleEvents(receiveCompletion: { [weak self] _ in
                    self?.subscriptions.removeValue(forKey: key)
                })
                .sink(receiveValue: { [weak self] in
                    self?.dispatch($0)
                })
                .store(in: &subscriptions, key: key)
        }
        
        withAnimation {
            state = newState
        }
    }
}

extension AnyCancellable {
    func store(in dictionary: inout [UUID: AnyCancellable], key: UUID) {
        dictionary[key] = self
    }
}
