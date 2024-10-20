//
//  ActiveScreenReducer.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

extension ActiveScreenState {
    static let reducer: Reducer<Self> = { state, action in
        var screens = state.screens
        
        if let action = action as? ActiveScreensAction {
            switch action {
            case ActiveScreensAction.showScreen(.splashScreen), ActiveScreensAction.dismissScreen(.splashScreen):
                screens = [.splashScreen]
            case ActiveScreensAction.showScreen(.home):
                screens = [.home(HomeViewState.initialState())]
            case ActiveScreensAction.showScreen(.search):
                screens += [.search(SearchState.initialState())]
            case ActiveScreensAction.dismissScreen(let screen):
                screens = screens.filter { $0 != screen }
            }
        }
       
        screens = screens.map { AppScreenState.reducer($0, action) }
        
        return ActiveScreenState(screens: screens)
    }
}
