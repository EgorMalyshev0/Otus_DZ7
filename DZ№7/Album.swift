//
//  Album.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

struct Album: Codable, Hashable {    
    let artistName, collectionName: String
    let artworkUrl100: String?
}

struct AlbumListResponse: Codable {
    let resultCount: Int
    let results: [Album]
}

