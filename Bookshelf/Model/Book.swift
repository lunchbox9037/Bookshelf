//
//  Book.swift
//  Bookshelf
//
//  Created by stanley phillips on 1/8/21.
//

import Foundation

class Book {
    let name: String
    let author: String
    let image: String
    let releaseDate: String
    let info: String
    
    init(name: String, author: String, image: String, releaseDate: String, info: String) {
        self.name = name
        self.author = author
        self.image = image
        self.releaseDate = releaseDate
        self.info = info
    }
}
