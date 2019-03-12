//
//  PageViewController.swift
//  Ques5Exer8
//
//  Created by Anindya Guha on 12/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController ,UIPageViewControllerDataSource {
    
    lazy var viewControllerList:[UIViewController] = {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController1 = storyBoard.instantiateViewController(withIdentifier: "AquaViewController")
        let viewController2 = storyBoard.instantiateViewController(withIdentifier: "PurpleViewController")
        let viewController3 = storyBoard.instantiateViewController(withIdentifier: "YellowOchreViewController")
        
        return [viewController1, viewController2, viewController3]
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        if let firstViewController = viewControllerList.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerCount = viewControllerList.index(of: viewController) else { return nil }
        
        let previousPage = viewControllerCount - 1
        
        guard previousPage >= 0 else {return nil}
        
        guard viewControllerList.count > previousPage else{return nil}
        
        return viewControllerList[previousPage]
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerCount = viewControllerList.index(of: viewController) else { return nil }
        
        let nextPage = viewControllerCount + 1
        
        guard viewControllerList.count != nextPage else {return nil}
        
        guard viewControllerList.count > nextPage else{return nil}
        return viewControllerList[nextPage]
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


