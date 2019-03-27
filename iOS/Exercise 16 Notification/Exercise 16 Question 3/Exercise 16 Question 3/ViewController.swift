//
//  ViewController.swift
//  Exercise 16 Question 3
//
//  Created by Anindya Guha on 27/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//


import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    
    @IBOutlet weak var messageTextfield: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var notifyButton: UIButton!
    let center = UNUserNotificationCenter.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerLocal()
        
    }
    
    //MARK: - Register for local notification -
    
    @objc func registerLocal() {
        //        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted {
                print("It is running")
            } else {
                print("It is not running")
            }
        }
    }
    
    //MARK: - Button Action -
    
    @IBAction func buttonScheduleNotificationTapped(_ sender: Any) {
        let time = Date()
        center.removeAllPendingNotificationRequests()
        registerCategories()
        let content = UNMutableNotificationContent()
        content.title = "Hi Sir!"
        content.subtitle = "\(time)"
        content.body = "This is the messgae  \(messageTextfield.text!) "
        content.categoryIdentifier = "alert"
        content.userInfo = ["set by": "Ani"]
        content.sound = UNNotificationSound(named: UNNotificationSoundName(rawValue: "quite-impressed.m4r"))
        
       
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 02, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    
    
    @IBAction func buttonClearAllNotificationTapped(_ sender: Any) {
        
        center.removeAllPendingNotificationRequests()
        
    }
    
    func registerCategories() {
        
        center.delegate = self
        let show = UNNotificationAction(identifier: "show", title: "Tell me more…", options: .foreground)
        let category = UNNotificationCategory(identifier: "alert", actions: [show], intentIdentifiers: [])
        
        center.setNotificationCategories([category])
    }
    
    //MARK: - UNUserNotification Delegate Method -
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
    {
        completionHandler([.alert, .badge, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        // pull out the buried userInfo dictionary
        let userInfo = response.notification.request.content.userInfo
        
        if let customData = userInfo["customData"] as? String {
            print("Custom data received: \(customData)")
            
            switch response.actionIdentifier {
            case UNNotificationDefaultActionIdentifier:
                // the user swiped to unlock
                print("Default identifier")
                
            case "show":
                // the user tapped our "show more info…" button
                print("Show more information…")
                
            default:
                break
            }
        }
        
        // you must call the completion handler when you're done
        completionHandler()
    }
    
}





