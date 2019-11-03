//
//  AlbumControllers.swift
//  Albums
//
//  Created by Joe Thunder on 11/1/19.
//  Copyright © 2019 LambdaSchool. All rights reserved.
//

import Foundation


class AlbumControllers {
    
    
    func testDecodingExampleAlbum() {
        
        let data = data else {
            return
        }
        
        let decoder = try JSONDecoder().decode(Album.self, from: data)
        
    }
    
}
