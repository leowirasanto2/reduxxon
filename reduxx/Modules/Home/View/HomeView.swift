//
//  HomeView.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var store: Store<HomeViewState>
    private var state: HomeViewState? { store.state }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Star Wars Characters")
                .font(.title)
                .frame(width: .infinity, alignment: .leading)
                .fontWeight(.bold)
            
            VStack {
                if let c = state?.characters.first {
                    Text(c.name)
                        .font(.headline)
                    Group {
                        Text("\(c.mass) kg")
                        Text("\(c.height) cm")
                        Text(c.gender)
                    }.font(.caption)
                }
            }
        }
        .onAppear {
            store.dispatch(HomeViewAction.getCharacters)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(globalStore)
}
