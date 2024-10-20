//
//  HomeViewReducer.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Foundation
import SwiftUI
import Combine

extension HomeViewState {
    static let reducer: Reducer<Self> = { state, action in
        switch action {
        case HomeViewAction.loading:
            return state.copyWith(isLoading: true)
        case HomeViewAction.getCharacters:
            return state.copyWith(isLoading: true)
        case let HomeViewAction.receivedCharacter(characters):
            return state.copyWith(isLoading: false, characters: characters)
        case let HomeViewAction.selectCharacter(selected):
            return state.copyWith(isShowingDetailSheet: true, selectedCharacter: selected)
        case HomeViewAction.showDetailSheet:
            return state.copyWith(isShowingDetailSheet: true)
        case HomeViewAction.hideDetailSheet:
            return state.copyWith(isShowingDetailSheet: false)
        default:
            return state
        }
    }
}
