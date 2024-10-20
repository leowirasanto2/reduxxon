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
            
            if let chars = state?.characters {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center) {
                        ForEach(chars) { char in
                            CharacterResultView(c: char)
                        }
                    }
                    .shimmer(when: Binding(get: { state?.isLoading ?? false }, set: { _ in }))
                }
                .scrollClipDisabled()
            }
        }
        .padding()
        .onAppear {
            store.dispatch(HomeViewAction.getCharacters)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(globalStore)
        .onAppear {
            globalStore.dispatch(HomeViewAction.getCharacters)
        }
}
