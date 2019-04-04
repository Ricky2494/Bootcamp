//
//  Question*POP1.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 04/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class Question8POP1: UIViewController {

    
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
        var imageUser: UIView?
    }
    override func viewDidLoad() {
        
        let arrayOfUser = [Employee]()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
