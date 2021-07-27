//
//  StoryBoardsIDs.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 27/07/2021.
//

import Foundation

enum StoryBoardsIDs: String {
    case main = "Main"
    
    var id: String {
        return self.rawValue
    }
}

enum ViewControllersIDs: String {
    case MoviesListVC = "MoviesListView"
    
    var id: String {
        return self.rawValue
    }
}
