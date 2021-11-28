//
//  AlbumsApi.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

class AlbumsApi {
    
    let networkService: NetworkService = .init()
    
    func getAlbums(by request: String, completion: @escaping (([Album]?) -> Void)) {
        let route = AlbumsNetworkRouter.getAlbums(request)
        networkService.performRequest(route: route) { (result: Result<AlbumListResponse, Error>) in
            switch result {
            case .success(let data):
                completion(data.results)
            case .failure(let error):
                print(error)
                completion(nil)
            }
        }
    }
}
