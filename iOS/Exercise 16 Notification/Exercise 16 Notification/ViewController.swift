//
//  ViewController.swift
//  Exercise 16 Notification
//
//  Created by Anindya Guha on 25/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PassDataDelegate {
    
    
    
    //    @IBOutlet weak var textfieldFullName: UITextField!
    //    @IBOutlet weak var textfieldAge: UITextField!
    //    @IBOutlet weak var textfieldParentsName: UITextField!
    
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelParentsName: UILabel!
    @IBOutlet weak var labelFullName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelFullName.text = ""
        labelAge.text = ""
        labelParentsName.text = ""
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.view.endEditing(true)
        let vc: SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: - PassDataDelegate method -
    
    func passDetails(fullNameOfUser: String, ageOfUser: String, parentsNameOfUser: String) {
        
        labelFullName.text = "The full name is " + fullNameOfUser
        labelAge.text = "The age is " + ageOfUser
        labelParentsName.text =  "The parents name is " + parentsNameOfUser + "."
    }
    
}

