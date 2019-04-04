/* Question 2: Explain the use of self,Self in protocols, Also how they differ for Static function.
    
    
     self
    self ius a keyword in swift that lets you cretae an instance of the class. it point to the current instance of the class just like the keyword of super in java
    
     Self
   Self is a keyword used in swift that lets you point to the class in a file. It is that point where you want to point to the class itself and access the properties in it .
   static
 
 Swift uses  static properties and you create one just by using the static keyword. When it is done you access the property by using the full name of the type. It is declared in class or protocols
 

*/



import UIKit

var str = "Hello, playground"


protocol GenericAddition{
    func combineSumInt(first: Int, second: Int) -> Int
    func combineSumFloat(first: Float, second: Float) -> Float
    func combineSumDouble(first: Double, second: Double) -> Double
    func combineData(first: String, second: String) -> String
}

class combineGeneric: GenericAddition{
    func combineSumInt(first: Int, second: Int) -> Int {
        return first + second
    }
    func combineSumFloat(first: Float, second: Float) -> Float {
        return first + second
        
    }
    func combineSumDouble(first: Double, second: Double) -> Double {
        return first + second
        
    }
    
    func combineData(first: String, second: String) -> String {
        return first + second
        
    }
    
}

let dataAdd: GenericAddition = combineGeneric()
let intAdd = dataAdd.combineSumInt(first: 20, second: 30)
print(intAdd)
let stringAdd = dataAdd.combineData(first: "ANindya", second: "Guha")
print(stringAdd)
let floatAdd = dataAdd.combineSumFloat(first: 23.333333, second: 26.777777)
print(floatAdd)
let doubleAdd = dataAdd.combineSumDouble(first: 23.33333333, second: 255.333333333)
print(doubleAdd)


/*:
 ## Question 4 Write an extension on collection type to find the combined value of collection.
 */

protocol Number
{
    static func +(left: Self, right: Self) -> Self
}
extension Int    : Number {}
extension Float  : Number {}
extension Double : Number {}
extension String : Number {}


infix operator +=

func += <T:Number> ( left: inout T, right: T)
{
    left = left + right
}


prefix operator +/

prefix func +/ <T:Number>(addData:[T]?) -> T?
{
    switch true
    {
    case addData == nil:
        return nil
        
    case addData!.isEmpty:
        return ("Array is empty" as! T)
        
    default:
        var result = addData![0]
        for i in 1..<addData!.count
        {
            result += addData![i]
        }
        return result
    }
}


let integerData = [22, 34,45, 56]
let floatData = [15.32, 34.433, 54.4556, 32.456]
let doubleData = [ 11.3214, 32.34567, 54.12345 ]
let stringData = ["Anindya"," Guha"," IOS"]
print(+/doubleData ?? 0)
print(+/floatData ?? 0)
print(+/integerData ?? 0 )
print(+/stringData ?? "0" )


