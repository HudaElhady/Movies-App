//
//  NetworkError.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import Foundation

enum NetworkError: Error {
    case badURL, requestFailed, unknown
    
    var errorMessage: String {
        switch self {
        case .badURL:
            return "Bad URL"
        case .requestFailed:
            return "Internet connection error"
        case .unknown:
            return "Unknown error"
        }
    }
    
}
