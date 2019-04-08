//
//  TabBarControllerViewController.swift
//  Assignment CoreData
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    @IBAction func onLogoutTap(_ sender: Any) {
//        UserDefaults.standard.removeObject(forKey: " ")
//        self.navigationController?.popToRootViewController(animated: true)
//
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isUserInteractionEnabled = false
        navigationController?.navigationBar.tintColor = UIColor.cyan
        navigationItem.hidesBackButton = true
        
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
