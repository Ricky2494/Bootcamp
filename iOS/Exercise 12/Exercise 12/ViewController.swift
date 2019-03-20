//
//  ViewController.swift
//  Exercise 12
//
//  Created by Anindya Guha on 19/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var nameOfUserTextField: UITextField!
    @IBOutlet var ageOfUserTextField: UITextField!
    @IBOutlet var addressOfUserTextField: UITextField!
    @IBOutlet var detailsOfUserTextField: UITextField!
    @IBOutlet var addPhotoButton: UIButton!
    @IBOutlet var submitDataButton: UIButton!
    
    struct userDetails {
        let userPic: UIImage
        let nameOfUser: String
        let ageOfUser: Int
        let addressOfUser: String
        let detailsOfUser: String
    }
    var arrayOfUserData = [userDetails]()
    let userImage = UIImagePickerController()
    
   
    
    @IBAction func clickImage() {
        userImage.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(userImage, animated:  true, completion:  nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "First Page"
        nameOfUserTextField.becomeFirstResponder()
        let click = UITapGestureRecognizer(target: self, action: #selector(clickImage))
        userPhoto.addGestureRecognizer(click)
        userImage.delegate = self 
        
        userPhoto.layer.cornerRadius = userPhoto.frame.size.width/2
        userPhoto.clipsToBounds = true
        
    }
    
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        userPhoto.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
   
    @IBAction func submitButton() {
        arrayOfUserData.append(userDetails(userPic: userPhoto.image!, nameOfUser: nameOfUserTextField.text!, ageOfUser: Int(ageOfUserTextField.text!)!, addressOfUser: addressOfUserTextField.text!, detailsOfUser: detailsOfUserTextField.text!))
        if arrayOfUserData.count > 0 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "TableViewCell")
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }


}

