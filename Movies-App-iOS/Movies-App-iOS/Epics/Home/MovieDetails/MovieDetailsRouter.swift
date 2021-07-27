//
//  MovieDetailsRouter.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 27/07/2021.
//

import UIKit

class MovieDetailsRouter: MoviesDetailsRouterProtocol {
    func showAlert(message: String, view: UIViewController) {
        view.alert(message: message, actions: [("Cancel", .cancel)])
    }
}
