//
//  GreetUserViewController.swift
//  Exercise 14 POP 1
//
//  Created by Anindya Guha on 09/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class GreetUserViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UserDetailsTableViewCell
        cell.nameLabel.text = arrayOfUser[indexPath.row].fname
        cell.addressLabel.text = arrayOfUser[indexPath.row].address
        cell.phoneLabel.text = arrayOfUser[indexPath.row].phoneNumber
        cell.emailLabel.text = arrayOfUser[indexPath.row].email
        return cell
    }
    
    
    @IBOutlet weak var employeeTable: UITableView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeTable.dataSource = self
        employeeTable.delegate = self
        
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        employeeTable.register(nib, forCellReuseIdentifier: "cell")
        employeeTable.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        customView.backgroundColor = UIColor.white
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("BACK", for: .normal)
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        customView.addSubview(button)
        
        return button
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        messageLabel.makeToast(label: "Greetings \(arrayOfUser[indexPath.row].fname!)!")
        
    }
    
    
    @objc func buttonAction(){
        self.navigationController?.popToRootViewController(animated: true)
    }
}
