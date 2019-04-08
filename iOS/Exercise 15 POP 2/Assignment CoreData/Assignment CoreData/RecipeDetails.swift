//
//  RecipeDetails.swift
//  Assignment CoreData
//
//  Created by Anindya Guha on 08/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
import CoreData

class RecipeDetails: UIViewController
{
   
   
    
    @IBOutlet weak var recipeNameTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var ingredientsTextField: UITextField!
    @IBOutlet weak var favouriteSwitch: UISwitch!
    @IBOutlet weak var saveButton: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func OnAddButton(_sender: Any)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func onSaveButton(_ sender: Any)
    {
        appendData(name: recipeNameTextField.text!, favourite: favouriteSwitch.isOn, time: timeTextField.text!, ingredients: ingredientsTextField.text!)
        self.navigationController?.popToRootViewController(animated: true)
    }
}



    protocol AppendDataRecipe
    {
        func appendData(name : String , favourite : Bool , time : String , ingredients : String)
    }
    
    extension RecipeDetails: AppendDataRecipe
    {
        func appendData(name : String ,favourite : Bool , time : String , ingredients : String)
        {
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            let context = appDelegate?.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "Recipe", in: context!)
            let result = NSManagedObject(entity: entity!, insertInto: context)
            result.setValue(name, forKey: "name")
            result.setValue(favourite, forKey: "favourites")
            result.setValue(time, forKey: "time")
            result.setValue(ingredients, forKey: "ingridients")
            do
            {
                try context?.save()
            }catch let error as NSError
            {
                print("Could not save. \(error), \(error.userInfo)")
            }
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

