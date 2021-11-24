//
//  SearchScreen.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct SearchScreen: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        Button("Search") {
            router.selection = 1
        }
        .tint(.red)
        .padding()
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
