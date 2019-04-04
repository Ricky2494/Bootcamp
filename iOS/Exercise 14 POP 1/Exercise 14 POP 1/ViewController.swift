//
//  ViewController.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 20/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    var dateToPrint = Date()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.text! = dateToPrint.takeDate()

        //Date.takeDate(Dated: "12/03/1999")
    }
    @IBAction func onClick() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Question2POP1")
        self.navigationController?.pushViewController(controller, animated: true)
    }
   
}
extension Date
{
    func takeDate() -> String {
        let data = DateFormatter()
        data.dateFormat = "dd/MM/yyyy"
        return data.string(from: self)
    }
}
