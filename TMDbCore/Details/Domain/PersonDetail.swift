//
//  PersonDetail.swift
//  TMDbCore
//
//  Created by Fabio Gomez on 2/2/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

struct PersonDetail: Decodable {
    let identifier: Int64
    let name: String?
    let biography: String?
    let taggedImages: TaggedImages?
    let birthday: String?
    let deathday: String?
    let profilePath: String?
    
    private enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case name
        case biography
        case birthday
        case deathday
        case profilePath = "profile_path"
        case taggedImages = "tagged_images"
        }
}
