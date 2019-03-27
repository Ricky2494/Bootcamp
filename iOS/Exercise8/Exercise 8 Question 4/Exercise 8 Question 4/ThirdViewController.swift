//
//  ThirdViewController.swift
//  Exercise 8 Question 4
//
//  Created by Anindya Guha on 27/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.layer.cornerRadius = 15.0
        image.layer.shadowOpacity = 20.0
        image.layer.shadowRadius = 30.0
        image.layer.shadowColor = UIColor.init(white: 200.0/255.0, alpha: 1.0).cgColor
        image.layer.shadowOffset = CGSize(width: 10, height: 10)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
