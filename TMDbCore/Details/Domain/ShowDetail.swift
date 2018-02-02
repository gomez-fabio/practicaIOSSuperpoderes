//
//  ShowDetail.swift
//  TMDbCore
//
//  Created by Fabio Gomez on 2/2/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

struct ShowDetail: Decodable {
    let backdropPath: String?
    let identifier: Int64
    let name: String?
    let overview: String?
    let posterPath: String?
    let credits: Credits?
    let genres: [GenreInfo]?
    let seasons: Int
    let episodes: Int

    private enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case identifier = "id"
        case name
        case overview
        case posterPath = "poster_path"
        case credits
        case genres
        case seasons = "number_of_seasons"
        case episodes = "number_of_episodes"
    }
}

