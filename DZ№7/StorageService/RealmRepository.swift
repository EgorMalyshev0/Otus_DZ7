//
//  RealmRepository.swift
//  DZ№7
//
//  Created by Egor Malyshev on 28.11.2021.
//

import Foundation
import RealmSwift

class RealmRepository {
    
    private var instance: Realm
    
    init() {
        let realmUrl = try! FileManager.default.url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent("Albums.realm")
        var realmConfig = Realm.Configuration()
        realmConfig.fileURL = realmUrl
        instance = try! Realm.init(configuration: realmConfig, queue: DispatchQueue.main)
    }
    
    func getAlbums() -> [Album] {
        let results = self.instance.objects(RealmAlbum.self)
        var albums: [Album] = []
        albums = results.map {Album(artistName: $0.artistName, collectionName: $0.collectionName, artworkUrl100: $0.artworkUrl100)}
        return albums
    }
    
    func clearAlbums() {
//        DispatchQueue.main.async {
            do {
                try self.instance.write({
                    self.instance.deleteAll()
                })
            } catch {
                print("Error clearing realm")

            }
//        }
    }
    
    func addAlbum(_ album: Album) {
        let realmAlbum = RealmAlbum()
        realmAlbum.artistName = album.artistName
        realmAlbum.collectionName = album.collectionName
        realmAlbum.artworkUrl100 = album.artworkUrl100 ?? ""
        
//        DispatchQueue.main.async {
            do {
                try self.instance.write({
                    self.instance.add(realmAlbum)
                })
            } catch {
                print("Error adding realm")
            }
//        }
    }
}
