//
//  DetailHeader+ShowDetail.swift
//  TMDbCore
//
//  Created by Fabio Gomez on 2/2/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

extension DetailHeader {
    init(show: ShowDetail, dateFormatter: DateFormatter) {
        title = show.name!
        posterPath = show.posterPath
        backdropPath = show.backdropPath
        
        let genre = show.genres?.first?.name
        let seasons = "\(show.seasons)" + " seasons"
        let episodes = "\(show.episodes)" + " episodes"

        metadata = [genre, seasons, episodes].flatMap { $0 }.joined(separator: " - ")
    }
}
