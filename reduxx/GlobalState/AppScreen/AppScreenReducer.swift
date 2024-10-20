//
//  AppScreenReducer.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

extension AppScreenState {
    static let reducer: Reducer<Self> = { state, action in
        switch state {
        case .splashScreen: return .splashScreen
        case .home(let state): return .home(HomeViewState.reducer(state, action))
        }
    }
}
