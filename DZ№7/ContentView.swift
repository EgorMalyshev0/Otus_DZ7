//
//  ContentView.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var viewModel: AlbumsViewModel
    
    var body: some View {
        TabView(selection: $router.selection) {
            SearchScreen()
                .tabItem({
                    Text("Search")
                    Image(systemName: "magnifyingglass.circle.fill")
                })
                .tag(0)
                .environmentObject(router)
                .environmentObject(viewModel)
            AlbumsScreen()
                .tabItem({
                    Text("Albums")
                    Image(systemName: "music.note.list")
                })
                .tag(1)
                .environmentObject(viewModel)
        }
        .accentColor(.red)
    }
}
