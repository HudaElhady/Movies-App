//
//  MoviesListResource.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import Foundation

struct MoviesListResource {
    static func moviesList(page: Int) -> Resource<MoviesListResponse> {
        let mainUrl = NetworkConstants.baseUrl +  NetworkConstants.Api.moviesList
        let queryString = "?" + "api_key=\(NetworkConstants.apiKey)" +
                          "&" + "page=\(page)"
        let urlString = "\(mainUrl)\(queryString)" .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
       return Resource<MoviesListResponse>(get: URL(string: urlString)!)
    }
}
