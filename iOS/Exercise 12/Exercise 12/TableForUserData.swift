//
//  TableForUserData.swift
//  Exercise 12
//
//  Created by Anindya Guha on 19/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class TableForUserData: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView : UITableView!
    
    var arrayOfUserData  = [ViewController.userDetails]()
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arrayOfUserData.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
//
//        cell.nameLabel.text = arrayOfUserData[indexPath.row].name
//        cell.ageLabel.text = String(arrayOfUserData[indexPath.row].age)
//        cell.adressLabel.text = arrayOfUserData[indexPath.row].address
//        cell.detailsLabel.text = arrayOfUserData[indexPath.row].details
//
//        if indexPath.row%5 == 4 {
//            //add activity indicator at bottom
//        }
//        return cell
//    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "tableCell")
        
        let navigationController = self.navigationController?.viewControllers
        let vc = navigationController![0] as! ViewController
        arrayOfUserData = vc.arrayOfUserData
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfUserData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
        
        cell.userImage.image = arrayOfUserData[indexPath.row].userPic
        cell.nameLabel.text = arrayOfUserData[indexPath.row].nameOfUser
        cell.ageLabel.text = String(arrayOfUserData[indexPath.row].ageOfUser)
        cell.addressLabel.text = arrayOfUserData[indexPath.row].addressOfUser
        cell.detailsLabel.text = arrayOfUserData[indexPath.row].detailsOfUser
        

        return cell
    }
    
}    // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

