//
//  reduxxApp.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 07/10/24.
//

import SwiftUI

let globalStore: Store<HomeViewState> = .init(
    state: .initialState(),
    reducer: HomeViewState.reducer,
    middlewares: [HomeViewMiddleware().middleware]
)

@main
struct reduxxApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalStore)
        }
    }
}
