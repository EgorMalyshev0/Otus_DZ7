//
//  DZ_7App.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

@main
struct DZ_7App: App {
    
    @ObservedObject var router: Router = .init()
    @ObservedObject var viewModel: AlbumsViewModel = .init()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
                .environmentObject(viewModel)
        }
    }
}
