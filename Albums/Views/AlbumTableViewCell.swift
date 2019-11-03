//
//  AlbumTableViewCell.swift
//  Albums
//
//  Created by Joe Thunder on 10/30/19.
//  Copyright © 2019 LambdaSchool. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    var album: Album? {
        didSet {
            updateViews()
        }
    }
    
    
    func updateViews() {
        
    }

}
