//
//  GenreInfo.swift
//  TMDbCore
//
//  Created by Fabio Gomez on 2/2/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

struct GenreInfo: Decodable {
    let identifier: Int64
    let name: String
    
    private enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case name
    }
}
