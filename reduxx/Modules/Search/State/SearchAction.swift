//
//  SearchAction.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import Foundation

enum SearchAction: Action {
    case loading
    case search(query: String)
    case searchResultReceived(results: [Character])
    case emptySearchResult
}
