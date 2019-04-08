//
//  ImageData.swift
//  Mega Assignment
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ImageData: UIViewController {

    @IBOutlet weak var authorButton: UIButton!
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    var openUrl =  ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onAuthorClick() {
        UIApplication.shared.openURL(NSURL(string: openUrl)! as URL)
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
