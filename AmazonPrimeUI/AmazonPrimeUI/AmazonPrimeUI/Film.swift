//
//  Film.swift
//  AmazonPrimeUI
//
//  Created by Asilcan Çetinkaya on 22.08.2022.
//

import Foundation

class Film {
    
    var filmId : Int?
    var filmImage : String?
    
     init(filmId: Int , filmImage: String ) {
        self.filmId = filmId
        self.filmImage = filmImage
    }
}
