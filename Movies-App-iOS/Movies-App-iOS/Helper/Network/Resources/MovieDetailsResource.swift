//
//  MovieDetailsResource.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 27/07/2021.
//

import Foundation

struct MovieDetailsResource {
    static func movieDetails(movieId: Int) -> Resource<MovieDetails> {
        let mainUrl = NetworkConstants.baseUrl +  NetworkConstants.Api.movieDetails + "\(movieId)"
        let queryString = "?" + "api_key=\(NetworkConstants.apiKey)" 
        let urlString = "\(mainUrl)\(queryString)" .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
       return Resource<MovieDetails>(get: URL(string: urlString)!)
    }
}
