//
//  ActiveScreensAction.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

enum ActiveScreensAction: Action {
    case showScreen(AppScreen)
    case dismissScreen(AppScreen)
}
