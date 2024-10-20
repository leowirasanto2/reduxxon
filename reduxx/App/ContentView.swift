//
//  ContentView.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 07/10/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        
        if store.state.screenState(for: .home) as HomeViewState? != nil {
            HomeView()
                .environmentObject(store)
        } else {
            Text("Splash Screen...")
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        store.dispatch(ActiveScreensAction.showScreen(.home))
                    }
                }
        }
        
    }
}

#Preview {
    ContentView()
        .environmentObject(globalStore)
}
