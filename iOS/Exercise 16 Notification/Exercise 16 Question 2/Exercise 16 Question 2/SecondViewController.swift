//
//  SecondViewController.swift
//  Exercise 16 Question 2
//
//  Created by Anindya Guha on 27/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

let notificationIdentifier = "notificatnotificationIdentifierionId"

class SecondViewController: UIViewController {

    @IBOutlet var labelTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second VC"
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doSomethingAfterNotified),
                                               name: NSNotification.Name(rawValue: notificationIdentifier),
                                               object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func doSomethingAfterNotified () -> () {
        
        self.view.backgroundColor = UIColor.green
    }
    
    @IBAction func buttonClickToNotifyTapped(_ sender: Any) {
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationIdentifier), object: self)
        
        labelTitle.text = " Second Page"
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
