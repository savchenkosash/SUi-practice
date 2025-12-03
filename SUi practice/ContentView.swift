//
//  ContentView.swift
//  SUi practice
//
//  Created by alexander on 21.11.25.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("Open Spotify") {
                router.showScreen(.fullScreenCover) { _ in
                    SpotifyHomeView()
                }
            }
        }
    }
    
}

#Preview {
    RouterView { _ in
        ContentView()
    }
}
