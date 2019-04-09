//
//  FavouritesViewController.swift
//  Assignment CoreData
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
import CoreData

class Favourites: UIViewController
{
    @IBOutlet weak var favouriteTableView: UITableView!
    @IBOutlet weak var logOutButton: UIButton!
    
    fileprivate lazy var fetchedResultController: NSFetchedResultsController<Recipe> = {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "favourites == true")
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context!, sectionNameKeyPath: nil, cacheName: nil)
        fetchResultController.delegate = self as? NSFetchedResultsControllerDelegate
        try! fetchResultController.performFetch()
        return fetchResultController
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        favouriteTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    @IBAction func clickLogOutButoon(_sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "UserLogin") as! UserLogin
        UserDefaults.standard.removeObject(forKey: "Log In")
        self.navigationController?.popViewController(animated: true)    }
   
}
extension Favourites : UITableViewDataSource , UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (fetchedResultController.fetchedObjects?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let recipe1 = fetchedResultController.object(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = recipe1.name
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            let context = appDelegate?.persistentContainer.viewContext
            let recipe = fetchedResultController.object(at: indexPath)
            context!.delete(recipe)
            do {
                try context!.save()
                print("saved!")
                //tableView.reloadData()
            } catch {
                
            }
        }
    }
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        if(type == .delete)
        {
            favouriteTableView.deleteRows(at: [indexPath!] , with: .fade)
            
        }
        if(type == .insert)
        {
            let currentIndexPath = self.fetchedResultController.indexPath(forObject: anObject as! Recipe)
            if(currentIndexPath != nil)
            {
                self.favouriteTableView.insertRows(at: [currentIndexPath!], with: .fade)
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
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


