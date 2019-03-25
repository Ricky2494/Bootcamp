//
//  SecondViewController.swift
//  Exercise 16 Notification
//
//  Created by Anindya Guha on 25/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

protocol PassDataDelegate {
    
    func passDetails(fullNameOfUser : String,ageOfUser: String, parentsNameOfUser:String )
}

class SecondViewController: UIViewController {
    
    var delegate : PassDataDelegate?
    
    @IBOutlet var fullNameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var parentsNameTextField: UITextField!
    
    //var dictionaryOfDetails:[]
    var Dict = [String:[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonSaveTapped(_ sender: Any) {
        
        self.view.endEditing(true)
        if delegate != nil {
            
            delegate?.passDetails(fullNameOfUser: fullNameTextField.text! , ageOfUser: ageTextField.text!, parentsNameOfUser: parentsNameTextField.text!)
        }
        
        self.navigationController?.popViewController(animated: true)
    }
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


