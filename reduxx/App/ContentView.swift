//
//  ContentView.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 07/10/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store<HomeViewState>
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    HomeView()
                        .environmentObject(store)
                } label: {
                    Text("Open Home")
                }

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(globalStore)
}
