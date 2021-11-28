//
//  AlbumsScreen.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct AlbumsScreen: View {
    
    @EnvironmentObject var viewModel: AlbumsViewModel
        
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(viewModel.albums, id: \.self) {
                    AlbumsScreenCell(album: $0)
                }
            }
            .padding(.horizontal, 20)
            Text("Nothing...")
                .opacity(viewModel.albums.isEmpty ? 1 : 0)
        }
        .padding(.top, 10)
    }
}

struct AlbumsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlbumsScreen()
    }
}
