//
//  ImageandMultiLabel.swift
//  Assignment10
//
//  Created by Anindya Guha on 07/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ImageandMultiLabel: UIViewController, UIImagePickerControllerDelegate {
    
      @IBOutlet var image: UIImageView!
//    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.title = "Question 2"
        
        
        image.layer.cornerRadius = image.frame.size.height / 2;
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.masksToBounds = true
        image.layer.borderWidth = 3
    }
//    @IBAction func moveToNextView() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "SmileyPage")
//        //controller?.label = "Hey doodie"
//        self.navigationController?.pushViewController(controller, animated: true)
//
//    }
    
        // Do any additional setup after loading the view.

   

}
