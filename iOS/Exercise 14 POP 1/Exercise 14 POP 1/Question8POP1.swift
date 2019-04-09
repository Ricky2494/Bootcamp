//
//  Question*POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 04/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
protocol Contactable {
    func fetchData()
}
extension Contactable {
    
    func fetchData(){
        
    }
    
}

struct Employee {
    
    var email: String?
    var phoneNumber: String?
    var employeeId: String?
    var fname: String?
    var lname: String?
    var userRole: String?
    var joiningDate: String?
    var id: String?
    var address: String?
    var imageUser: UIImage?
}
var arrayOfUser = [Employee]()

class Question8POP1: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var employeeIDTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var userRoleTextField: UITextField!
    @IBOutlet weak var joiningDateTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var toastLabel: UILabel!
    @IBOutlet weak var addImageButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var nextPageButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

    func userDetailsAppend(){
        arrayOfUser.append(Employee(email: emailTextField?.text, phoneNumber: phoneNumberTextField?.text, employeeId: employeeIDTextField?.text, fname: firstNameTextField?.text, lname: lastNameTextField?.text, userRole: userRoleTextField?.text, joiningDate: joiningDateTextField?.text, id: idTextField?.text, address: addressTextField?.text, imageUser: userImage?.image))
    }
    
    @IBAction func submitAction(_ sender: Any) {
        userDetailsAppend()
    }
    
    
    @IBAction func addImage(_ sender: Any) {
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
            myPickerController.delegate = self
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
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            userImage.image = image
            
            
        }else{
            print("Cant load Data")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func resetFunction(_ sender: Any) {
        addressTextField.text = ""
        joiningDateTextField.text = ""
        userRoleTextField.text = ""
        idTextField.text = ""
        lastNameTextField.text = ""
        firstNameTextField.text = ""
        employeeIDTextField.text = ""
        phoneNumberTextField.text = ""
        emailTextField.text = ""
        userImage.image = UIImage(named: "")
        
        
    }
    
    @IBAction func clickOnNextPage(_sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "GreetUserViewController")
        self.navigationController?.pushViewController(controller, animated: true)
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

