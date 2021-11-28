//
//  AlbumsViewModel.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

class AlbumsViewModel: ObservableObject {
    
    @Published var albums: [Album] = .init()
    
    let albumsApi: AlbumsApi = .init()
    
    func performSearch(with text: String) {
        albumsApi.getAlbums(by: text) { [weak self] albums in
            self?.albums = albums ?? []
            NotificationCenter.default.post(name: NSNotification.searchFinished.name, object: nil)
        }
    }
    
}
