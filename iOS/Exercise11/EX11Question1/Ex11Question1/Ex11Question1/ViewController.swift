//
//  ViewController.swift
//  Ex11Question1
//
//  Created by Anindya Guha on 13/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonForViewChange: UIButton!
    @IBOutlet weak var numberOfViews: UITextField!
    var arrayOfViews = UIStackView(arrangedSubviews: [])
    var firstStackView = UIStackView(arrangedSubviews: [])
    var secondStackView = UIStackView(arrangedSubviews: [])
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeViewOfStacks() {
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let userInputOfViews = String(numberOfViews.text!)
        if userInputOfViews == "1" {
            arrayOfViews = UIStackView(arrangedSubviews: [greenView])
        }
        if userInputOfViews == "2" {
            arrayOfViews = UIStackView(arrangedSubviews: [greenView, yellowView])
        }
        if userInputOfViews == "3" {
            arrayOfViews = UIStackView(arrangedSubviews: [greenView, yellowView, redView])
        }
        else if userInputOfViews == "4" {
            arrayOfViews = UIStackView(arrangedSubviews: [firstStackView , secondStackView])
            firstStackView = UIStackView(arrangedSubviews: [greenView, yellowView])
            secondStackView = UIStackView(arrangedSubviews: [redView, blueView])
            
            firstStackView.axis = .horizontal
            secondStackView.axis = .horizontal
            
            firstStackView.distribution = .fillEqually
            secondStackView.distribution = .fillEqually
            
            firstStackView.frame = CGRect(x: 0.0, y: 0.0, width: arrayOfViews.bounds.size.width , height: arrayOfViews.bounds.size.height)
            
            secondStackView.frame = CGRect(x: 0.0, y: 0.0, width: arrayOfViews.bounds.size.width, height: arrayOfViews.bounds.size.height)
            
            
        }
        
        arrayOfViews.axis = .vertical
        arrayOfViews.distribution = .fillEqually
        
        view.addSubview(arrayOfViews)
        arrayOfViews.frame = CGRect(x: 0.0, y: 120.0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-120.0)
        
    }


}

