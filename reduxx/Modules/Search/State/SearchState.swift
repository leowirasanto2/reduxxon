//
//  SearchState.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

struct SearchState: Codable {
    let loading: Bool
    let results: [Character]
    
    static func initialState() -> Self {
        .init(loading: false, results: [])
    }
    
    func copyWith(loading: Bool? = nil, results: [Character]? = nil) -> Self {
        .init(loading: loading ?? self.loading, results: results ?? self.results)
    }
}

