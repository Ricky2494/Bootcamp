//
//  ViewController.swift
//  Location Services App
//
//   Created by Anindya Guha on 03/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var lotteryLabel: UILabel!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var lotteryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = NSLocalizedString("name", comment: "nameLabel")
        stateLabel.text = NSLocalizedString("state", comment: "stateLabel")
        countryLabel.text = NSLocalizedString("country", comment: "countryLabel")
        birthdayLabel.text = NSLocalizedString("dateOfBirth", comment: "birthdayLabel")
        lotteryLabel.text = NSLocalizedString("lotteryWon", comment: "lotteryLabel")
    }


}

