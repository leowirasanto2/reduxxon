//
//  SearchView.swift
//  reduxx
//
//  Created by Leo on 10/20/24.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var store: Store<AppState>
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SearchView()
        .environmentObject(globalStore)
}
