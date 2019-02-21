import UIKit

var str = "Hello, playground"

/* INITIALIZERS
 1.Implement the parameterised initialisation with class or struct.
 
 class Person{
    var name:String?
    var surname:String?
    init(name:String, surname:String){
        self.name = name
        self.surname = surname
    }
}
var objectofPerson = Person(name: "Anindya", surname: "Guha")
print(objectofPerson.name!)
print(objectofPerson.surname!)
*/

/*

2.Write all the Rules of initialiser in Inheritance

Rule 1: A designated initializer must call a designated initializer from its immediate superclass.
Rule 2: A convenience initializer must call another initializer from the same class.
Rule 3: A convenience initializer must ultimately call a designated initializer
 
 */
/*
 3.Using convenience Initializers, write-down the Initializers for MOVIE class having basic attributes like title, author, publish_date, etc.

class MOVIE{
    var id:Int = 12345
    var name:String
    var title:String = "Nature"
    var author:String
    var publish_date:String
    
    init(name:String, author:String, publish_date:String){
        self.name = name
        self.author = author
        self.publish_date = publish_date
    }
    convenience init() {
        self.init()
    }
    var objectofMovie = MOVIE(name: "Hawaayein", author: "Enid Blyton", publish_date: "12/04/19")
    
    print(objectofMovie.id)
    print(objectofMovie.name)
    print(objectofMovie.title)
    print(objectofMovie.author)
    print(objectofMovie.publish_date)
    
    */

/* 4.Declare a structure which can demonstrate the throwable Initializer

    struct User {
        var name: String?
        
        init (name: String?) throws {
            
            if let name = name
            {
                self.name = name
            }
            else {
                print ("enter your name please !")
            }
            
            
        }
    }
    let u = User (name: "jacob")
    let u2 = User (name: nil)
    
    */

/* ARRAYS
 /*
 1.Create an array containing the 5 different integer values. Write are at least 4 ways to do this.
var a = [1,2,3,4,5]
var b:[Int] = [1,2,34,4,5]
var c:Array<Int> = [1,2,3,4,5]
var d = [Int]()
*/
 /*
2.Create an immutable array containing 5 city names.
 let cityNmaes:[String]  = ["Kolkata" , "Mumbai" , "Delhi" , "Chennai" , "Pune"]
*/
 /*
 3. Create an array with city 5 city names. Later add other names like Canada, Switzerland, Spain to the end of the array in at least 2 possible ways.
 
var arrayofCityNames:[String] = ["Kolkata" , "Mumbai" , "Delhi" , "Chennai" , "Pune"]

arrayofCityNames.append("Canada")
arrayofCityNames.append("Switzerland")
arrayofCityNames.append("Spain")

arrayofCityNames.insert("Canada", at: 6)
arrayofCityNames.insert("Switzerland", at: 7)
arrayofCityNames.insert("Spain", at: 8)
 */
 
/*  Create an array with values 14, 18, 15, 16, 23, 52, 95. Replace the values 24 & 48 at 2nd & 4th index of array
 var a:[Int] = [14, 18, 15, 16,23, 52, 95]
print (a)
a[2] = 24
a[4] = 48
print(a)
*/

*/

/* SETS
 Use set operations to...
 Determine whether the set of house animals is a subset of farm animals.
 Determine whether the set of farm animals is a superset of house animals.
 Determine if the set of farm animals is disjoint with city animals.
 Create a set that only contains farm animals that are not also house animals.
 Create a set that contains all the animals from all sets.

let houseAnimals:Set = ["🐶","🐱"]
let farmAnimals:Set = ["🐮","🐔","🐷","🐶","🐱"]
let cityAnimals:Set = ["🐭", "🐥"]
print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))
print(farmAnimals.intersection(houseAnimals))
print(farmAnimals.union(houseAnimals).union(cityAnimals))
*/

/* DICTIONARY
 1. Create an empty dictionary with keys of type String and values of type Int and assign it to a variable in as many ways as you can think of (there's at least 4 ways).

 myDictionary1: Dictionary<String, Int> = [:]
 myDictionary2: [String: Int] = [:]
 myDictionary3 = Dictionary<String, Int>()
 myDictionary4 = [String: Int]()
*/


/* 2. Create a mutable dictionary named secretIdentities where the key value pairs are "Hulk" -> "Bruce Banner", "Batman" -> "Bruce Wayne", and "Superman" -> "Clark Kent".

let myDictionary1: Dictionary<String, Int> = [:]
let myDictionary2: [String: Int] = [:]
let myDictionary3 = Dictionary<String, Int>()
let myDictionary4 = [String: Int]()
var airports: [String: Any] = ["CCU": "Calcutta Intl",
                               "DEL": "Delhi Intl",
                               "BOM": "Mumbai Intl"]]
var demo : [String : Any] = ["A" : 1,
                             "B" : 2.0,
                             "C" : "iOS",
                             "D" : ["A1", "A2", "A3"],
                             "E"  :airports]
print(demo["E"])

*/

/* 3. Create a nesters structure of Key-value pair.
 var secretIdentities = [String:String]()
 secretIdentities["Hulk"] = "Bruce Banner"
 secretIdentities["Batman"]  = "Bruce Wayne"
 secretIdentities["Superman"] = "Clark Kent"
 */

/* 4. Print all the keys in the dic
var items  = ["1":"Anindya" , "2":"Akash" , "3":"Rhik" , "4":"Spandan"]
for (key,value) in items {
    print("\(key)  \(value)")
}
*/


/* SUBSCRIPTSs
 
 What is subscript ? Write down the declaration syntax.
 Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence. You use subscripts to set and retrieve values by index without needing separate methods for setting and retrieval. For example, you access elements in an Array instance as some Array[index] and elements in a Dictionary instance as someDictionary[key].
 subscript(index: Int) -> Int {
 get {
 //code
 }
 set(newValue) {
 //code
 }
 }
*/





