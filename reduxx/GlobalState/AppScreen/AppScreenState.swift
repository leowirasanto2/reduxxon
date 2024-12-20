//
//  AppScreenState.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

enum AppScreenState: Codable {
    case splashScreen
    case home(HomeViewState)
    case search(SearchState)
}

extension AppScreenState: CustomStringConvertible {
    var description: String {
        switch self {
        case .splashScreen:
            return "splashscreen"
        case .home(_):
            return "home"
        case .search(_):
            return "search"
        }
    }
}

extension AppScreenState {
    static func == (lhs: AppScreenState, rhs: AppScreen) -> Bool {
        switch (lhs, rhs) {
        case (.splashScreen, .splashScreen): return true
        case (.home, .home): return true
        case (.search, .search): return true
        default: return false
        }
    }
    
    static func == (lhs: AppScreen, rhs: AppScreenState) -> Bool {
        return rhs == lhs
    }
    
    static func != (lhs: AppScreen, rhs: AppScreenState) -> Bool {
        return !(lhs == rhs)
    }
    
    static func != (lhs: AppScreenState, rhs: AppScreen) -> Bool {
        return !(lhs == rhs)
    }
}
