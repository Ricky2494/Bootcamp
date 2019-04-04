//
//  Question7POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 04/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
protocol  ValidatingProtocol {
    func emailOfUser(email: String) -> Bool
    func passwordOfUser(password: String) -> Bool
}

extension ValidatingProtocol {
    func emailOfUser(email: String) -> Bool {
        let emailValidData = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailData = NSPredicate(format:"SELF MATCHES[c] %@", emailValidData)
        return emailData.evaluate(with: email)
    }
    func passwordOfUser(password: String) -> Bool {
        let passwordValidData = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordValidData.evaluate(with: password)
    }

}

class Question7POP1: UIViewController , ValidatingProtocol {

    @IBOutlet weak var toastLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var button: UIButton!



    @IBAction func submitButton(_ sender: Any) {
        let emailCheck = emailOfUser(email: userNameTextField.text!)
        let passCheck =  passwordOfUser(password: passwordTextField.text!)
        if emailCheck == true && passCheck == true {
            toastLabel.makeToast(label: "Correct Email and password")
        }
        else {
            toastLabel.makeToast(label: "Not valid email or password")
        }
    }
    @IBAction func usernameTextField(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
