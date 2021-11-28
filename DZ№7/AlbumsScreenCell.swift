//
//  AlbumsScreenCell.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct AlbumsScreenCell: View {
    
    let album: Album
    
    var body: some View {
        ZStack {
            VStack {
                Text(album.collectionName)
                    .font(.system(size: 13, weight: .light, design: .default))
                    .foregroundColor(.primary)
                    .lineLimit(1)
                Text(album.artistName)
                    .font(.system(size: 13, weight: .light, design: .default))
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .background(Color.blue)
    }
}

struct AlbumsScreenCell_Previews: PreviewProvider {
    static var previews: some View {
        AlbumsScreenCell(album: Album.mock)
    }
}
