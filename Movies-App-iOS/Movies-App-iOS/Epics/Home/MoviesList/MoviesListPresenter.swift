//
//  MoviesListPresenter.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import Foundation

class MoviesListPresenter {
    var interactor: MoviesListInteractorProtocol
    weak var view: MoviesListPresenterOutputProtocol?
    let router: MoviesListRouterProtocol
    var moviesList = [Movie]()
    
    
    init(interactor: MoviesListInteractorProtocol, router: MoviesListRouterProtocol) {
        self.interactor = interactor
        self.router = router
        self.interactor.presenter = self
    }
    
}

extension MoviesListPresenter: MoviesListPresenterProtocol {
    var moviesCount: Int {
        return moviesList.count
    }
    
    func getMoviesList() {
        interactor.fetchMovies()
    }
    
    func configureCell(_ cell: MovieCellProtocol,at index: Int) {
        let movie = moviesList[index]
        cell.setMovie(title: movie.title ?? "", image: "https://image.tmdb.org/t/p/w500/\(movie.posterPath ?? "")" )
    }
}

extension MoviesListPresenter: MoviesListInteractorOutputProtocol {
    func moviesListFailure(error: NetworkError) {
        router.showAlert(message: error.errorMessage, view: view!)
    }
    
    func moviesList(_ list: [Movie]) {
        moviesList = list
        view?.addNewMovies()
    }
}
