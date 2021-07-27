//
//  MoviesListInteractor.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import Foundation

class MoviesListInteractor {
    weak var presenter: MoviesListInteractorOutputProtocol?
    let moviesRepo: MoviesRepo
    
    init(moviesRepo: MoviesRepo = MoviesRepoImpl()) {
        self.moviesRepo = moviesRepo
    }
    
}

extension MoviesListInteractor: MoviesListInteractorProtocol {
    func fetchMovies() {
        moviesRepo.getMoviesList(pageNumber: 1) { [weak self] result in
            switch result {
            case .success(let moviesResponse):
                self?.presenter?.moviesList(moviesResponse.results ?? [])
            case .failure(let error):
                self?.presenter?.moviesListFailure(error: error)
            }
        }
    }
}
