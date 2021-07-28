//
//  MovieDetailsRepo.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 28/07/2021.
//

import Foundation

protocol MovieDetailsRepo {
    func getMovieDetails(movieId: Int, completionHandler: @escaping (Result<MovieDetails,NetworkError>)->Void)
    
}

class MovieDetailsRepoImpl: MovieDetailsRepo {
    
    func getMovieDetails(movieId: Int, completionHandler: @escaping (Result<MovieDetails,NetworkError>)->Void) {
        URLSession.shared.load(MovieDetailsResource.movieDetails(movieId:movieId)) {response in
            switch response {
            case .success(let movies):
                completionHandler(.success(movies))
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
    
}
