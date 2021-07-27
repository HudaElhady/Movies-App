//
//  MoviesListRouter.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 27/07/2021.
//

import UIKit

class MoviesListRouter: MoviesListRouterProtocol {
    
    var rootViewController: UIViewController {
        let interactor = MoviesListInteractor()
        let discoverCtrl =  UIStoryboard(name: StoryBoardsIDs.main.id, bundle: nil).instantiateViewController(withIdentifier: ViewControllersIDs.MoviesListVC.id) as! MoviesListView
        discoverCtrl.presenter = MoviesListPresenter(interactor: interactor, router: self)
        let navigationController = UINavigationController(rootViewController: discoverCtrl)
        return navigationController
    }
    
    
    func showAlert(message: String, view: UIViewController) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        alert.addAction(.init(title: "Cancel", style: .cancel, handler:nil))
        view.present(alert, animated: true, completion: nil)
    }
}
