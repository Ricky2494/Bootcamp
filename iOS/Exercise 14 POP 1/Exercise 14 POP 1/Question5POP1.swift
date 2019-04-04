//
//  Question5POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 02/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
protocol LoggableProtocol {
    func addUser(userName: String)
    func removeUser(userName: String)
}

extension LoggableProtocol {
    func addUser(userName: String) {
        UserDefaults.standard.set(userName, forKey: userName)
    }
    func removeUser(userName: String) {
        UserDefaults.standard.removeObject(forKey: userName)
    }
}
class Question5POP1: UIViewController, LoggableProtocol {
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var nextOPageButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onClick() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Question6POP1")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func onSignUp() {
    removeUser(userName: userNameTextField.text!)
    loginLabel.text = "Login"
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    @IBAction func onLoggingIn() {
        addUser(userName: userNameTextField.text!)
        let name = UserDefaults.standard.string(forKey: userNameTextField.text!)
        loginLabel.text = "Welcome!"
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



