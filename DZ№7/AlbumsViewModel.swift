//
//  AlbumsViewModel.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

class AlbumsViewModel: ObservableObject {
    
    @Published var albums: [Album] = .init()
    @Published var isLoading: Bool = false
    
    private let realmRepository: RealmRepository = .init()
    
    init() {
        albums = realmRepository.getAlbums()
    }
    
    let albumsApi: AlbumsApi = .init()
    
    func performSearch(with text: String) {
        isLoading = true
        albumsApi.getAlbums(by: text) { [weak self] albums in
            self?.isLoading = false
            if let albums = albums {
                self?.realmRepository.clearAlbums()
                self?.albums = albums
                albums.forEach { album in
                    self?.realmRepository.addAlbum(album)
                }
                NotificationCenter.default.post(name: NSNotification.searchFinished.name, object: nil)
            }
            
        }
    }
    
}
