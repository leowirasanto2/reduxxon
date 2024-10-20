//
//  HomeViewState.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Foundation

struct HomeViewState: Codable, Equatable {
    let isLoading: Bool
    let characters: [Character]
    let isShowingDetailSheet: Bool
    let selectedCharacter: Character?
    
    static func initialState() -> HomeViewState {
        .init(isLoading: false, characters: Character.loadingData, isShowingDetailSheet: false, selectedCharacter: nil)
    }
    
    func copyWith(isLoading: Bool? = nil, characters: [Character]? = nil, isShowingDetailSheet: Bool? = nil, selectedCharacter: Character? = nil) -> HomeViewState {
        .init(
            isLoading: isLoading ?? self.isLoading,
            characters: characters ?? self.characters,
            isShowingDetailSheet: isShowingDetailSheet ?? self.isShowingDetailSheet,
            selectedCharacter: selectedCharacter ?? self.selectedCharacter
        )
    }
}
