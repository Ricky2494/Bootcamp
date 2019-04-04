//
//  Question4POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 02/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//



import UIKit

class Question4POP1: UIViewController , IndicatorActivity {
    
    var activityIndicator = UIActivityIndicatorView()
    
    @IBOutlet weak var switch1: UISwitch!
    
    
    @IBOutlet weak var question5Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        showActivityIndicator()
    }
    @IBAction func onQuestion5ButtonClick(_ sender: Any) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "Question5POP1") as! Question5POP1
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    @IBAction func onSwitchValueChanged(_ sender: Any) {
        if(switch1.isOn)
        {
            showActivityIndicator()
        }
        else
        {
            hideActivityIndicator()
        }
    }
    
    
}


public protocol IndicatorActivity {
    
    /// The activity indicator
    var activityIndicator: UIActivityIndicatorView { get }
    
    func showActivityIndicator()
    
    func hideActivityIndicator()
}

public extension IndicatorActivity where Self: UIViewController {
    
    func showActivityIndicator() {
        self.activityIndicator.style = .gray
        self.activityIndicator.frame = CGRect(x: 100, y: 100, width: 80, height: 80)
        self.activityIndicator.center = CGPoint(x: self.view.bounds.size.width / 2, y: self.view.bounds.height - 200 )
        self.view.addSubview(self.activityIndicator)
        self.activityIndicator.startAnimating()
    }
    
    func hideActivityIndicator() {
        self.activityIndicator.stopAnimating()
        self.activityIndicator.removeFromSuperview()
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


