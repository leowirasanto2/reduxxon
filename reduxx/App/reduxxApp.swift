//
//  reduxxApp.swift
//  reduxx
//
//  Created by Leo Wirasanto Laia on 07/10/24.
//

import SwiftUI

let globalStore = Store(
    state: AppState.initState(),
    reducer: AppState.reducer,
    middlewares: [HomeViewMiddleware().middleware]
)

@main
struct reduxxApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalStore)
        }
    }
}
