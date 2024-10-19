//
//  HomeViewAction.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import Foundation

enum HomeViewAction: Action {
    case loading
    case selectCharacter(selected: Character)
    case getCharacters
    case receivedCharacter(characters: [Character])
}
