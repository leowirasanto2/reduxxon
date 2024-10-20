//
//  AppStateReducer.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

extension AppState {
    static let reducer: Reducer<Self> = { state, action in
        AppState(activeScreens: ActiveScreenState.reducer(state.activeScreens, action))
    }
}
