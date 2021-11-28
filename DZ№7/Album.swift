//
//  Album.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

struct Album: Codable, Hashable {    
//    var id = UUID().uuidString
    let artistName, collectionName, artworkUrl100, primaryGenreName, copyright: String
    let collectionId: Int
    
    static let mock = Album(artistName: "Artist",
                            collectionName: "CollectionName",
                            artworkUrl100: "",
                            primaryGenreName: "Rap",
                            copyright: "",
                            collectionId: 1
    )
}

struct AlbumListResponse: Codable {
    let resultCount: Int
    let results: [Album]
}

