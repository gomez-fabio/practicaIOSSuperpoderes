//
//  DetailHeader+PersonDetail.swift
//  TMDbCore
//
//  Created by Fabio Gomez on 2/2/18.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation

extension DetailHeader {
    init(person: PersonDetail, dateFormatter: DateFormatter) {
        title = person.name!
        posterPath = person.profilePath

        // Select the first image with aspect ratio 16/9 from taggedImages and use it like backdrop, courtesy of Fcallau
        var image: String?
        
        if let taggedImages = person.taggedImages {
            var i = 0
            var imageNotFound = true
            
            while ((i < taggedImages.results.count) && imageNotFound) {
                let taggedImage = taggedImages.results[i]
                
                if (taggedImage.aspectRatio > 1.5 && taggedImage.aspectRatio < 1.8) {
                    image = taggedImage.filePath
                    imageNotFound = false
                }
                
                i = i + 1
            }
        } else {
            image = nil
        }
    
        backdropPath = image
        
        let birthday = (person.birthday.flatMap{ dateFormatter.date(from: $0) }?.year).map { String($0) }
        let deathday = (person.deathday.flatMap{ dateFormatter.date(from: $0) }?.year).map { String($0) }
        
        metadata = [birthday, deathday].flatMap { $0 }.joined(separator: " - ")
    }
}
