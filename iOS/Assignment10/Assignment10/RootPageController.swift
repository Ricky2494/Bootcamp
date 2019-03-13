//
//  RootPageController.swift
//  Assignment10
//
//  Created by Anindya Guha on 13/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class RootPageController: UIViewController {

    @IBOutlet var question1Button: UIButton!
    @IBOutlet var question2Button: UIButton!
    @IBOutlet var question3Button: UIButton!
    @IBOutlet var question4Button: UIButton!
    @IBOutlet var question5Button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome, Sir!"
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func movetoQues1()
{
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let controller =  storyboard.instantiateViewController(withIdentifier: "ViewController")
    self.navigationController?.pushViewController(controller, animated: true)
    
    }
    
    @IBAction func movetoQues2()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller =  storyboard.instantiateViewController(withIdentifier: "ImageandMultiLabel")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    @IBAction func movetoQues3()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller =  storyboard.instantiateViewController(withIdentifier: "SmileyPage")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    @IBAction func movetoQues4CalculatorWithConstraints()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller =  storyboard.instantiateViewController(withIdentifier: "CalculatorWithConstraints")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    @IBAction func movetoQues5CalculatorWithStackView()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller =  storyboard.instantiateViewController(withIdentifier: "UICalculator")
        self.navigationController?.pushViewController(controller, animated: true)
        
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
