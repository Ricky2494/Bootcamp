//
//  ViewController.swift
//  Assignment9
//
//  Created by Anindya Guha on 05/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource , UITextFieldDelegate{
    
    @IBOutlet var usernameSubmitTextField: UITextField!
    @IBOutlet var userEmailSubmitTextField: UITextField!
    @IBOutlet var userPhoneSubmitTextField: UITextField!
    @IBOutlet var userPasswordSubmitTextField: UITextField!
    @IBOutlet var usernameHometownSubmit: UIPickerView!
    @IBOutlet var keepAccpvt: UILabel!
    @IBOutlet var keepAccPvt: UISwitch!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var usernameDOBTextField: UITextField!
    @IBOutlet var usernameHomeTownTextField: UITextField!
    var datePicker : UIDatePicker!
    var citypicker : UIPickerView!
    
    
    let hometownArray: [String] = ["Delhi", "Mumbai","Kolkata", "Chennai", "Pune", "Hyderabad", "Bangalore"]
    
    @IBAction func moveToNextView(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ViewController2")
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == self.usernameDOBTextField {
        self.pickUpDate(self.usernameDOBTextField)
    }
        else if textField == usernameHomeTownTextField{
            self.pickupHomeTown(self.usernameHomeTownTextField)
        }
    }
    //MARK:- Function of datePicker
    func pickUpDate(_ textField : UITextField){
        
        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePicker.Mode.date
        textField.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ViewController.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
    }
    
    // MARK:- Button Done and Cancel
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        usernameDOBTextField.text = dateFormatter1.string(from: datePicker.date)
        usernameDOBTextField.resignFirstResponder()
    }
    @objc func cancelClick() {
        usernameDOBTextField.resignFirstResponder()
    }

    
    
    func pickupHomeTown(_ textField : UITextField){
        
        // DatePicker
        self.citypicker = UIPickerView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.citypicker.backgroundColor = UIColor.white
        self.citypicker.delegate = self
        self.citypicker.dataSource = self
       // self.datePicker.datePickerMode = UIDatePicker.Mode.date
        textField.inputView = self.citypicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ViewController.doneHomeTownClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ViewController.cancelHomeTownClick))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
    }
    
    
    @objc func doneHomeTownClick() {
        let citySelected = hometownArray[citypicker.selectedRow(inComponent: 0)]
        print ("city%@" ,citySelected)
        usernameHomeTownTextField.text = citySelected
        usernameHomeTownTextField.resignFirstResponder()
        
    }
    @objc func cancelHomeTownClick() {
        usernameHomeTownTextField.resignFirstResponder()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hometownArray.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        usernameHometownSubmit.delegate = self as UIPickerViewDelegate
//        usernameHometownSubmit.dataSource = self as! UIPickerViewDataSource
//
        // Do any additional setup after loading the view, typically from a nib.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return hometownArray[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


