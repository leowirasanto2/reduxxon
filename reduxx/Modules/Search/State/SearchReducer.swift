//
//  SearchReducer.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

extension SearchState {
    static let reducer: Reducer<Self> = { state, action in
        switch action {
        case SearchAction.loading:
            return state.copyWith(loading: true)
        case SearchAction.searchResultReceived(let results):
            return state.copyWith(loading: false, results: results)
        case SearchAction.emptySearchResult:
            return state.copyWith(loading: false, results: [])
        default:
            return state
        }
    }
}
