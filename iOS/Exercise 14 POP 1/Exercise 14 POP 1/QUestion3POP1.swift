//
//  QUestion3POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 29/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class QUestion3POP1: UIViewController, ErrorViewProtocol {

    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var labelToast: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClick() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Question4POP1")
        self.navigationController?.pushViewController(controller, animated: true)
            }
    @IBAction func onSubmit() {
        //let displayLabel = validationOfUserData(textField: dataTextField)
        var result = validationOfUserData(textField: dataTextField)
        
        labelToast.makeToast(label: result)

    }
}

protocol ErrorViewProtocol: class {
    func validationOfUserData( textField: UITextField!) -> String
}


extension ErrorViewProtocol where Self: UIViewController {
    func validationOfUserData( textField: UITextField!) -> String {
        
        let format = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        let result = format.evaluate(with: textField.text!)
        if result == true {
            return "String is valid"
        }
        else {
            return "String not valid"
        }
        
        }
}

