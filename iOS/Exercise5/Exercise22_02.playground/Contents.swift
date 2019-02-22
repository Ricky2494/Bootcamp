import UIKit

var str = "Hello, playground"
    
    /*
    1. What is extension?
Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling).
*/

/*
2. Create a class and write the delegate of UITextField in extension of that class.

 
 */
/* 3. Write a protocol and create an extension of the protocol. In extension create a function

func sayHello() {
    
    print(“Hello!”)
    
}
 protocol A {
 func sayHello()
 }
 extension A {
 func sayHello() {
 print("Hello sir , hows this assignment going?")
 }
 }

*/

/*
4.Write an enum and create an extension of the enum.
 enum Competency: String {
 case iOS
 case Android
 case JVM
 }
 
 extension Competency {
 var value: String {
 return self.rawValue
 }
 
 func printValue() {
 switch self {
 case .iOS:
 print("In iOS")
 case .Android:
 print("In Android")
 case .JVM:
 print("In JVM")
 }
 }
 }
 
 print(Competency.iOS.value)
*/

/*
5. What is Generic?
Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.
 */

/*
6. Explain generic with an example?

 func swapTwoInts(_ a: inout Int, _ b: inout Int) {
 let c = a
 a = b
 b = c
 }
 */

/*
 
/*
7. Explain the difference between map and compactMap with an example.
Map function lets you map eacxh element of the collection for iteration without any cod especified.
 compactMap lets ou map each element of the collection without any considering the nil values mentioned in the scale.
 
example for map function
 let names: [String] = ["Anindya","Rhik","Spandan"]
 let mapNames = names.Map{$0}
 print(mapNames)

 example for caompact mP FUNCTION
 let names: [String] = ["ANINDYA", nil, "RHIK", nil, "SPANDAN"]
 let compactNames = names.compactMap{$0}
 print(compactNames)
 */
 
 
 /*
8. Write an example of reduce function with initial value 1000.
 let values = [1000, 3000, 5000, 6000, 8000]
 let avg = values.reduce(1000, { (result:Double, item:Double) -> Double in
 return result + (item / Double(values.count))
 })
 print(avg)
 */
9. - 2 marks

*/
/*
struct Person {
    
    
    
    var name : String
    
    var age : Int
    
    
    
}

let person1 = Person(name: "Sam", age: 23)

let person2 = Person(name: "John", age: 30)

let person3 = Person(name: "Rob", age: 27)

let person4 = Person(name: "Luke", age: 20)



let personArray = [person1, person2, person3, person4]

let p = personArray.filter{$0.age>25}
print(p)
*/

//Find all person whose age is more than 25 using filter function.

