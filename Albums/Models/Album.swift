//
//  Album.swift
//  Albums
//
//  Created by Joe Thunder on 11/1/19.
//  Copyright © 2019 LambdaSchool. All rights reserved.
//

import Foundation

// MARK: - Album
struct Album: Codable {
    let artist: String
    let coverArt: [CoverArt]
    let genres: [String]
    let id, name: String
    let songs: [Song]
}

// MARK: - CoverArt
struct CoverArt: Codable {
    let url: String
}

// MARK: - Song
struct Song: Codable {
    let duration: Duration
    let id: String
    let name: Name
}

// MARK: - Duration
struct Duration: Codable {
    let duration: String
}

// MARK: - Name
struct Name: Codable {
    let title: String
}
