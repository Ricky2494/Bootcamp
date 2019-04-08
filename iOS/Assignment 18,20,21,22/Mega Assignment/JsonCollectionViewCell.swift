//
//  JsonCollectionViewCell.swift
//  Mega Assignment
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class JsonCollectionViewCell: UICollectionViewCell {


    @IBOutlet weak var dataView: UIView!
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func getImage(image: UIImage) {
        imageView.image = image
        animationView.isHidden = true
        imageView.isHidden = false
        dataView.isHidden = false
    }
    
    func getAuthor(authorName: String) {
        self.imageLabel.text = authorName
    }
}
