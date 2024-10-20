//
//  ActiveScreenState.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

struct ActiveScreenState: Codable {
    let screens: [AppScreenState]
}

extension ActiveScreenState {
    static func initState() -> ActiveScreenState {
        return ActiveScreenState(screens: [.splashScreen])
    }
}
