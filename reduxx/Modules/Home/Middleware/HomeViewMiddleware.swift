//
//  HomeViewMiddleware.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Combine
import Foundation
import SwiftUI

final class HomeViewMiddleware {
    private var characterCancellable: AnyCancellable?
    
    func middleware(state: AppState, action: Action) -> AnyPublisher<Action, Never> {
        
        switch action {
        case HomeViewAction.getCharacters:
            characterCancellable?.cancel()
            return fetchCharacters()
        default:
            break
        }
        
        return Empty().eraseToAnyPublisher()
    }
    
}

private extension HomeViewMiddleware {
    func fetchCharacters() -> AnyPublisher<Action, Never> {
        return Just(HomeViewAction.receivedCharacter(characters: Character.mockCharacters))
            .delay(for: 2, scheduler: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
