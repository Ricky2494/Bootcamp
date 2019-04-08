//
//  UserLogin.swift
//  Assignment CoreData
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class UserLogin: UIViewController
{
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("in Logon",UserDefaults.standard.bool(forKey: "Log In"))
        if(UserDefaults.standard.bool(forKey: "Log In"))
        {
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let controller = storyBoard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func onLoginButtonClick(_ sender: Any)
    {
        UserDefaults.standard.set(true, forKey: userNameTextField.text! )
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        self.navigationController?.pushViewController(controller, animated: true)
        
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

