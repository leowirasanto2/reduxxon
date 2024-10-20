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
        VStack(alignment: .leading) {
            Text("All Characters")
                .font(.title)
                .frame(width: .infinity, alignment: .leading)
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
                        .presentationDetents([.medium])
                } else {
                    EmptyView()
                }
            })
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
