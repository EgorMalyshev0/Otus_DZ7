//
//  AlbumsNetworkRouter.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

enum AlbumsNetworkRouter: APIRouter {
    
    case getAlbums(String)
    
    var parameters: [String : CustomStringConvertible]? {
        switch self {
        case .getAlbums(let data):
            return ["term": data,
                    "entity": "album"]
        }
    }
    
    var path: String {
        switch self {
        case .getAlbums:
            return "/search"
        }
    }
    
}
