//
//  TaggedImages.swift
//  TMDbCore
//
//  Created by Fabio Gomez on 2/2/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

struct TaggedImages: Decodable {
    struct TaggedImage: Decodable {
        let filePath: String?
        
        private enum CodingKeys: String, CodingKey {
            case filePath = "file_path"
        }
    }
    
    let results: [TaggedImage]
}
