//
//  CustomCollectionViewCell.swift
//  MoviesTables
//
//  Created by Diplomado on 25/05/24.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
        
    func setup(name: String) {
        movieTitle.text = name
        movieImage.image = UIImage(named: name)
    }
}
