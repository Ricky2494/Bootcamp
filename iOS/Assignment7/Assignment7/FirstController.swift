//
//  FirstController.swift
//  Assignment7
//
//  Created by Anindya Guha on 08/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class FirstController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet weak var buttonPushSecond: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First Page"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func PushSecond() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SecondPage")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    @IBAction func PresentSecondPage() {
        let controller = storyboard!.instantiateViewController(withIdentifier: "SecondPage")
        self.present(controller, animated: true, completion: nil)
    }
    

}

/*
Question no .5 ---- What is a Segue?

 
 Segues are visual connectors between view controllers in your storyboards, shown as lines
 between the two controllers. They allow you to present one view controller from another,
 optionally using adaptive presentation so iPads behave one way while iPhones behave
 another.A segue is triggered perhaps through a button press or a table view selection method
 will be called on your view controller, at which point you can configure your destination
 view controller by setting some properties.

*/



/*

 Explore diff between Xib's And ViewController and create a short note on its difference.
 
 Storyboards are an exciting feature first introduced in iOS 5 that save time building user
 interfaces for your apps. Storyboards allow you to prototype and design multiple view
 controller views within one file.Before Storyboards you had to use XIB files and you could
 only use one XIB file per view (UITableViewCell, UITableView or other supported UIView
 types).

 XIB stands for the XML Interface Builder. Interface Builder is a software application which
 allows you to develop Graphical User Interface with the help of Cocoa and carbon. The
 generated files are either stored as NIB or XIB files.
 
 
 
 
 
 
 */
