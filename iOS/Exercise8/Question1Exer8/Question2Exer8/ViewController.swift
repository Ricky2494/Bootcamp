//
//  ViewController.swift
//  Question1Exer8
//
//  Created by Anindya Guha on 12/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
            //For Rounded Corner
            imageView.layer.cornerRadius = 15.0
            //For Shadow
            imageView.layer.shadowColor = UIColor.init(white: 210.0/255.0, alpha: 1.0).cgColor
            imageView.layer.shadowOpacity = 9.0
            imageView.layer.shadowRadius = 22.0
            imageView.layer.shadowOffset = CGSize(width: -10, height: 20)

        // Do any additional setup after loading the view, typically from a nib.
    }


}


