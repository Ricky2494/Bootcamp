//
//  ViewController.swift
//  Exercise 16 Question 2
//
//  Created by Anindya Guha on 27/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First VC"
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doSomethingAfterNotified),
                                               name: NSNotification.Name(rawValue: notificationIdentifier),
                                               object: nil)
        
    }
    
    @objc func doSomethingAfterNotified() {
        print("I've been notified")
        self.view.backgroundColor = UIColor.red
        labelTitle.text = "First Page"
    // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonNavigateToNextTapped(_ sender: Any) {
        
        let vc: SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

/*
 
 4.  What is push payload size in iOS 12 ?
 
 Regular Notifications - 4kB
 VOiP Notifications - 5kB
 
 5. What is push Notification? How does it work?
 
 Push notifications are ways used by apps to notify the iPhones or iProducts all other notifiactions in the system. But first you have to install the app so that the notification can run in the app on the device.
 
 iOS requests a device token from Apple Push Notification Service (APNS). The app receives the token, which functions as the address to send a push notification to. The app sends the token of the device to your server. When prompted, the server will send a push notification with a device token to the APNS.
 
 */
