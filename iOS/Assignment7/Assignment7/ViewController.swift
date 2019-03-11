//
//  ViewController.swift
//  Assignment7
//
//  Created by Anindya Guha on 02/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet weak var buttonPushSecond: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First Page"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func PushSecond() {
        
        let myStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = myStoryBoard.instantiateViewController(withIdentifier: "SecondPage")
        self.navigationController?.pushViewController(controller, animated: true)
        print("Running")
    }
    @IBAction func PresentSecondPage() {
        let controller = storyboard!.instantiateViewController(withIdentifier: "SecondPage")
        self.present(controller, animated: true, completion: nil)
    }
   
    
}




