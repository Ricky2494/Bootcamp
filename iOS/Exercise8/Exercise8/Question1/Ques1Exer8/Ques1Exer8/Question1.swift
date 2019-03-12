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


/*
 
 
 Differnce between Frame and boundds
 
 
 The bounds of an UIView is the rectangle, expressed as a location (x,y) and size
 (width,height) relative to its own coordinate system (0,0).
 
 The frame of an UIView is the rectangle, expressed as a location (x,y) and size
 (width,height) relative to the superview it is contained within.
 
Difference between Clip to bounds and mask to bounds
 
 
 When Clipstobounds is set to yes, we will only see the part of the subview that fits within
 the bounds of the superview. Otherwise, if clipsToBounds is set to no, we will  see that the
 the entire subview, even the parts outside the superview as sthe clippping is not a part of
 the package and hence does not have any effect on it.
 
When the  Maskstobounds property is set to yes, any sublayers of the layer that extend
 outside its boundaries will be clipped to those boundaries. After using it we cannot see
 anything outside the edges of the window as it will not be visible. When masksToBounds is
 no, no clipping occurs, and any sublayers that extend outside the layer's boundaries
 will be visible in their entirety

 
 Difference between Strong and weak in ios
 
 Strong-  keep this in the heap as long as we need it.
 Similar to reetain the object
 All default and local pointers a re strong pointers
 
 Weak - Used for Weak References.
 When there are referencew cycles and we need to avoid them.
 
 */
