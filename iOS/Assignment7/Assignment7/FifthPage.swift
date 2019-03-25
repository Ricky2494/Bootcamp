//
//  FifthPage.swift
//  Assignment7
//
//  Created by Anindya Guha on 07/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class FifthPage: UIViewController {

    @IBOutlet var FirstPageButton: UIButton!
    @IBOutlet var LastPageButton: UIButton!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fifth and Final Page!!!"
        
        let info = self.navigationController?.viewControllers
        let dataPasser = info![0] as? FirstController
        let data = dataPasser?.dataTextfield.text
            label.text = data
        // Do any additional setup after loading the view.
    

    }
    
    @IBAction func CallFirstPage() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func CallBackPage() {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func Dismiss() {
        dismiss(animated: true, completion: nil)
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
