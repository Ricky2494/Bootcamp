//
//  ThirdPage.swift
//  Assignment7
//
//  Created by Anindya Guha on 07/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ThirdPage: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third Page"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushFourthPage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "FourthPage")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func DismissThis() {
        dismiss(animated: true, completion: nil)
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


