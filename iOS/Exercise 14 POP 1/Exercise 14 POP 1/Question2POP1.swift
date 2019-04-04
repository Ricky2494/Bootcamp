//
//  Question2POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 29/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class Question2POP1: UIViewController {
    @IBOutlet weak var toastLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        toastLabel.makeToast(label: "This is a toast")
        // Do any additional setup after loading the view.
    }
    @IBAction func onClick() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "QUestion3POP1")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
    protocol PresentToast {
        func makeToast(label:  String)
    }

    extension UILabel: PresentToast {
        func makeToast(label: String) {
            self.isHidden = false
            self.backgroundColor  =  UIColor.green
            self.clipsToBounds = true
            self.text = label
            UIView.animate(withDuration: 5, delay: 0, options: .transitionFlipFromTop, animations: {self.alpha = 0.0}, completion: {(isCompleted) in })
        }
    

}
