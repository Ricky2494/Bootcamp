//
//  ViewController.swift
//  Exercise 15 POP 2
//
//  Created by Anindya Guha on 02/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,LoadData,UIScrollViewDelegate {
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    func loadTheString() {
        print("Hey you caught me here")
    }
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelDisplay?.text = ViewController().loadData()
    }
    
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        loadData()
    }
    
    
}

protocol LoadData {
    func loadTheString()
}

extension LoadData where Self : UIScrollViewDelegate
{
    func loadData() -> String
    {
        let data: String = "Loading The Data please wait........."
        return data
    }
    
}
