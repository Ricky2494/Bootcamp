//
//  ViewController.swift
//  Exercise 8 Question 4
//
//  Created by Anindya Guha on 27/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var question1Button: UIButton!
    @IBOutlet weak var question2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First page"
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func moveToQuestion1() {
    let myStoryBoard = UIStoryboard(name: "Main", bundle: nil)
    let controller = myStoryBoard.instantiateViewController(withIdentifier: "SecondViewController")
    self.navigationController?.pushViewController(controller, animated: true)
   
}
    @IBAction func moveToQuestion2() {
        let myStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = myStoryBoard.instantiateViewController(withIdentifier: "ThirdViewController")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }

}

