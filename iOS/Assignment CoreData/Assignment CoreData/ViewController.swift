//
//  ViewController.swift
//  Assignment CoreData
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
import CoreData



protocol DbElementPassable {
    func passElement(element : String )
}



class ViewController: UIViewController
{
    @IBOutlet weak var recipeTableView: UITableView!
    @IBOutlet weak var addRecipeButton: UIButton!
    @IBOutlet weak var navBar: UINavigationBar!
    
    
    fileprivate lazy var fetchedResultController: NSFetchedResultsController<Recipe> = {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context!, sectionNameKeyPath: nil, cacheName: nil)
        fetchResultController.delegate = self as? NSFetchedResultsControllerDelegate
        try! fetchResultController.performFetch()
        return fetchResultController
    }()
    
    var delegate : DbElementPassable?
    
    override func viewDidLoad()
    {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        super.viewDidLoad()
        recipeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.title = "New Recipe"
        appDelegate?.saveContext()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        recipeTableView.reloadData()
    
    }



    @IBAction func onAddRecipeButtonClick(_ sender: Any)
    {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "RecipeDetails") as! RecipeDetails
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (fetchedResultController.fetchedObjects?.count)!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let recipe = fetchedResultController.object(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = recipe.name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
extension ViewController : NSFetchedResultsControllerDelegate{
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        recipeTableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        recipeTableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        if(type == .delete)
        {
            recipeTableView.deleteRows(at: [indexPath!] , with: .fade)
            
        }
        if(type == .insert)
        {
            let currentIndexPath = self.fetchedResultController.indexPath(forObject: anObject as! Recipe)
            if(currentIndexPath != nil)
            {
                self.recipeTableView.insertRows(at: [currentIndexPath!], with: .fade)
            }
        }
    }
    
}
