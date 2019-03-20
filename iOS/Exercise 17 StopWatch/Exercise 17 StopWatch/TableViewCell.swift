//
//  TableViewCell.swift
//  Exercise 17 StopWatch
//
//  Created by Anindya Guha on 20/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var tableLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func valueOfLabel(value: Any) {
        tableLabel.text = " \(value)"
    }
    
}
