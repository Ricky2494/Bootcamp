//
//  UserDetailsTableViewCell.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 09/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class UserDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var userPic: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
