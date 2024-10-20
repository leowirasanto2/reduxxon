//
//  HomeView.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 20/10/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var store: Store<AppState>
    private var state: HomeViewState? { store.state.screenState(for: .home) as HomeViewState? }
    
    var body: some View {
        HStack {
            Text("Reduxxxon App")
                .font(.title)
            
            NavigationLink {
                SearchView()
            } label: {
                Image(systemName: "magnifyingglass")
            }
        }
        .frame(height: 85)
        ScrollView {
            VStack(alignment: .leading) {
                Text("All Characters")
                    .font(.headline)
                    .fontWeight(.bold)
                
                if let chars = state?.characters {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center) {
                            ForEach(chars) { char in
                                Button {
                                    store.dispatch(HomeViewAction.selectCharacter(selected: char))
                                } label: {
                                    CharacterResultView(c: char)
                                }
                            }
                        }
                        .foregroundStyle(.black)
                        .shimmer(when: Binding(get: { state?.isLoading ?? false }, set: { _ in }))
                    }
                    .scrollClipDisabled()
                }
            }
            .padding()
        }
        .sheet(
            isPresented: Binding(
                get: { state?.isShowingDetailSheet ?? false
                },
                set: { isShow in
                    if isShow {
                        store.dispatch(HomeViewAction.showDetailSheet)
                    } else {
                        store.dispatch(HomeViewAction.hideDetailSheet)
                    }
                }),
            content: {
                if let c = state?.selectedCharacter {
                    Text(c.name)
                        .font(.title)
                        .presentationDetents([.medium, .large])
                } else {
                    EmptyView()
                }
            }
        )
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
