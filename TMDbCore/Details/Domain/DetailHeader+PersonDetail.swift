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
        
        var imagen: String?
        
        if let results = person.taggedImages?.results.count{
            if (results > 0) {
                imagen = person.taggedImages?.results[0].filePath
            } else {
                imagen = nil
            }
        }
        
        backdropPath = imagen
        let birthday = (person.birthday.flatMap{ dateFormatter.date(from: $0) }?.year).map { String($0) }
        let deathday = (person.deathday.flatMap{ dateFormatter.date(from: $0) }?.year).map { String($0) }
        
        metadata = [birthday, deathday].flatMap { $0 }.joined(separator: " - ")
    }
}
