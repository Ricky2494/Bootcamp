//
//  ViewController.swift
//  Ques1Exer8
//
//  Created by Anindya Guha on 12/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class Question1: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController1 = storyBoard.instantiateViewController(withIdentifier: "Shirts")
        let viewController2 = storyBoard.instantiateViewController(withIdentifier: "Footwear")
        let viewController3 = storyBoard.instantiateViewController(withIdentifier: "Accessories")
        
        
        viewController1.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        viewController2.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        viewController3.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        
        let tabBarList = [viewController1, viewController2, viewController3]
        viewControllers = tabBarList
        
        
    }
    
    
}


