//
//  ViewController2.swift
//  Assignment9
//
//  Created by Anindya Guha on 05/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIImagePickerControllerDelegate,  UINavigationControllerDelegate  {

    @IBOutlet var doneButton: UIButton!
    @IBOutlet var imagePicker: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.imagePicker.layer.cornerRadius = self.imagePicker.frame.size.width / 2;
        imagePicker.layer.cornerRadius = imagePicker.frame.size.height / 2;
//        self.imagePicker.clipsToBounds = true
        //imagePicker.layer.cornerRadius =  100
        imagePicker.layer.borderColor = UIColor.black.cgColor
        imagePicker.layer.masksToBounds = true
        
       /* let imagecircle = UIImageView(frame: CGRect(0, 0, 100, 100))
        imagePicker.layer.borderWidth = 1
        imagePicker.layer.masksToBounds = false
        imagePicker.layer.borderColor = UIColor.black.cgColor
        imagePicker.layer.cornerRadius = imagePicker.frame.height/2
        imagePicker.clipsToBounds = true   */
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addImageBtn(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (alert:UIAlertAction!) -> Void in
            self.camera()
        }))

        actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (alert:UIAlertAction!) -> Void in
            self.photoLibrary()
        }))

        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.present(actionSheet, animated: true, completion: nil)
    }
    
    
    func camera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .camera
            self.present(myPickerController, animated: true, completion: nil)
        }
    }
    
    func photoLibrary() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .photoLibrary
            self.present(myPickerController, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let imageCaptured = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.imagePicker.image = imageCaptured
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func moveToNextView(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ViewController3")
        self.navigationController?.pushViewController(controller, animated: true)
        print("running")
        
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
