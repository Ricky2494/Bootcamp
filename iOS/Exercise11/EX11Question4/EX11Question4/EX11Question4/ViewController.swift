//
//  ViewController.swift
//  EX11Question4
//
//  Created by Anindya Guha on 15/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var VerticalStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        VerticalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: VerticalStackView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: VerticalStackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: VerticalStackView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: VerticalStackView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        
    }


}

