//
//  RealmAlbum.swift
//  DZ№7
//
//  Created by Egor Malyshev on 28.11.2021.
//

import Foundation
import RealmSwift
import Realm

class RealmAlbum: RealmSwiftObject {
    @Persisted var artistName: String = ""
    @Persisted var collectionName: String = ""
    @Persisted var artworkUrl100: String = ""
    
}
