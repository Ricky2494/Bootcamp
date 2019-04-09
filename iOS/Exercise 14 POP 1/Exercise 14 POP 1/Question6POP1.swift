//
//  Question6POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 02/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class Question6POP1: UIViewController , Roundable , Borderable {
        
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundTheView(imageView : imageView)
        borderImage(imageView: imageView)
        
        
    }
    @IBAction func clickNextPage(_sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Question7POP1")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

protocol Roundable {
    func roundTheView(imageView : UIImageView)
}
extension Roundable
{
    func  roundTheView(imageView : UIImageView){
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
        
       
        }
  
}

protocol Borderable {
    func borderImage(imageView : UIImageView)
}
extension Borderable
{
    func borderImage(imageView : UIImageView)
    {
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 10.0
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


