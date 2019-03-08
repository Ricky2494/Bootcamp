//
//  ViewController3.swift
//  Assignment9
//
//  Created by Anindya Guha on 05/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet var segmentSelector: UISegmentedControl!
    @IBOutlet var label1: UILabel!
    
    @IBAction func SegmentSelect() {
        switch segmentSelector.selectedSegmentIndex {
        case 0:
            label1.text = "Employer Case Selected"
        case 1:
            label1.text = "Employee Case Selected"
        default:
            label1.text = "this is default"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
