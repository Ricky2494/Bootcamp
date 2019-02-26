import UIKit
func siftBeans(fromGroceryList: [String]) -> (beans:[String], otherGroceries:[String]){
    var beans: [String] = [ ]
    var otherGroceries: [String] = [ ]
    for items in fromGroceryList{
        if items.contains("beans"){
            beans.append(items)
        }
        else {
            otherGroceries.append(items)
            }
        }
    return (beans,otherGroceries)
}
let result = siftBeans(fromGroceryList: ["green beans",
                            
                            "milk",
                            
                            "black beans",
                            
                            "pinto beans",
    
                            "apples"])


print ("Grocery items containing beans are \(result.beans)")
print ("Grocery items containing other than beans are \(result.otherGroceries)")

/*:
 ====================================================================
 */
class AnindyaCalculator{
    enum Operations{
        case addition(Double,Double)
        case multiplication(Double,Double)
        case divison(Double,Double)
        case subtraction(Double,Double)
        case squareRoot(Double)
        
    }
        func equals(op: Operations) -> Double{
            switch op{
            case .addition(let operand1,let operand2):
                return operand1 + operand2
            case .subtraction(let operand1,let operand2):
                return operand1 - operand2
            case .divison(let operand1,let operand2):
                return operand1 / operand2
            case .multiplication(let operand1,let operand2):
                return operand1 * operand2
            case .squareRoot(let operand1):
                return operand1.squareRoot()
            }
        }


}

let obj = AnindyaCalculator()
print(obj.equals(op: .addition(22.0, 25.8)))

/*:
 =============================================================================
 */
struct AnindyaCalc
{
    func add(_ num1 : Int ,_ num2 : Int) -> Int
    {
        return (num1 + num2)
    }
    func sub(num1 : Int , num2 : Int) -> Int
    {
        return (num1 - num2)
    }
    func mul(num1 : Int , num2 : Int) -> Int
    {
        return (num1 * num2)
    }
}

func calcu(c : (Int,Int) -> Int , firstNum : Int , secondNum : Int)
{
    let m = c(firstNum , secondNum)
    print(m)
}
var n = AnindyaCalc()
calcu(c : n.add , firstNum: 22 , secondNum: 16 )
calcu(c: n.mul , firstNum: 15, secondNum: 37 )



























