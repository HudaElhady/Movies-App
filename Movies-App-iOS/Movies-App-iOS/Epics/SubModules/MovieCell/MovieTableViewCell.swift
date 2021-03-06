//
//  MovieTableViewCell.swift
//  Movies-App-iOS
//
//  Created by huda elhady on 26/07/2021.
//

import UIKit
import Kingfisher

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
   
    static let identifier = "MovieTableViewCell"

}

extension MovieTableViewCell: MovieCellProtocol {
    func setMovie(title: String, image: String) {
        movieTitleLabel.text = title
        movieImageView.kf.setImage(with: URL(string: image)!)
    }
}
