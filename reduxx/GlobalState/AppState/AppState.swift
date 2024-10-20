//
//  AppState.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

struct AppState: Codable {
    let activeScreens: ActiveScreenState
}

extension AppState {
    static func initState() -> AppState {
        return .init(activeScreens: .initState())
    }
}

extension AppState {
    func screenState<State>(for screen: AppScreen) -> State? {
        return activeScreens.screens
            .compactMap { s in
                switch (s, screen) {
                case (.home(let state), .home): return state as? State
                default: return nil
                }
            }
            .first
    }
}
