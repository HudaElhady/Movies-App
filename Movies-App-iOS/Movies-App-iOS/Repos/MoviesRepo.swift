//
//  MoviesRepo.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import Foundation

protocol MoviesRepo {
    func getMoviesList(pageNumber: Int, completionHandler: @escaping (Result<MoviesListResponse,NetworkError>)->Void)
    
}

class MoviesRepoImpl: MoviesRepo {
    
    func getMoviesList(pageNumber: Int, completionHandler: @escaping (Result<MoviesListResponse,NetworkError>)->Void) {
        URLSession.shared.load(MoviesListResource.moviesList(page: pageNumber)) {response in
            switch response {
            case .success(let movies):
                completionHandler(.success(movies))
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
    
}
