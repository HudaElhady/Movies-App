//
//  NetworkConstants.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import Foundation

struct NetworkConstants {
    static let apiKey = "ae05ee1dc4d2c7877650e872f570a7b1"
    static let baseUrl = "https://api.themoviedb.org/3/"
    static let imageBaseUrl = "https://image.tmdb.org/t/p/w500/"
    
    struct Api {
        static let moviesList = "movie/now_playing"
        static let movieDetails = "movie/"
    }
    
}
