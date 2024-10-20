//
//  HomeViewState.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Foundation

struct HomeViewState: Equatable {
    let isLoading: Bool
    let characters: [Character]
    
    static func initialState() -> HomeViewState {
        .init(isLoading: false, characters: Character.loadingData)
    }
    
    func copyWith(isLoading: Bool? = nil, characters: [Character]? = nil) -> HomeViewState {
        .init(
            isLoading: isLoading ?? self.isLoading,
            characters: characters ?? self.characters
        )
    }
}
