//
//  ViewController.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 20/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Date.takeDate(Dated: "12/03/1999")
    }


}
extension Date
{
    static func takeDate(Dated: String)
    {
        var data = [String]()
        data = (Dated.components(separatedBy: "/"))
        print(data)
    }
}
