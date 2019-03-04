import UIKit

//Question 1
/*:
 Swift requires you to create a custom Error type. Typically an Enum is used which conforms to the Error Protocol.
 */

enum errorPro : Error
{
    case initilasiedFalse
}

func checkerror(throwErrorBool : Bool) throws -> String
{
    if throwErrorBool
    {
        return "This case is Successful"
    }
    else
    {
        throw errorPro.initilasiedFalse
    }
    
}
do {
    try checkerror(throwErrorBool: false)
}
catch{
    print(error)
}

// Question 2
enum Ques2 : Error
{
    case initilisationFailed
}
class InitErrorCheck
{
    var numberInt : Int?
    init? (no : Int)
    {
        if no == 0
        {
            return nil
        }
        else
        {
            self.numberInt = no
        }
    }
}

var obj = InitErrorCheck(no: 12)
do{
    if (obj == nil)
    {
        throw Ques2.initilisationFailed
    }
    else
    {
        print(obj!.numberInt!)
    }
}
catch{
    
    print( Ques2.initilisationFailed )
    
}

//Question 3
/*:
 try is use to try for the error in the following code
 try! is used when the user is sure that the following code will surely not throw the error, but if the error thrown then the playground will crash. This can be used without do catch block.
 try? is used when the user is not sure that it may or may not throw the error ,  This can be used without do catch block.
 */


enum checkadd : Error
{
    case number(String)
}
func checkForValue(num1 : Int) throws -> Int
{
    if(num1 > 50 )
    {
        return num1
    }
    else{
        throw checkadd.number("Values is smaller then 50")
    }
}
do{
    let obj1 = try checkForValue(num1: 10)
    print(obj1)
}
catch
{
    print(error)
}

// as the try! means that this will throw the error for sure
let obj2 = try! checkForValue(num1: 68) // if value changed to 10 it will crash
print(obj2)

// as the try? means that it may or may not throw the error
let obj3 = try? checkForValue(num1: 22) // if value changed to 10 also then it will show the error
print(obj3)

// Question 4
struct toTheNew
{
    var empID : Int
    var empName : String
    var empEmail : String
    var joiningDate : Int
    var isPresent : Bool
    var competency : String
    var attendancePercent : Int
}
enum noBonusReasons : Error
{
    case EmployeenotPresent(String)
    case Competency(String)
    case notCompletedoneYear(String)
    case notaemployee(String)
    case attendanceLessThenEighty(String)
}
class BonusProgram {
    
    var TTNEmployees : [toTheNew] = [toTheNew(empID: 001, empName: "Anindya", empEmail: "anindya@tothenew.com",                       joiningDate: 2018 , isPresent: false, competency: "ios" , attendancePercent: 89) ,
                                     toTheNew(empID: 002, empName: "Akash", empEmail: "Akash@tothenew.com", joiningDate: 2017 , isPresent: true, competency: "Bussiness Development" , attendancePercent: 75) ,
                                     toTheNew(empID: 003, empName: "Rhik", empEmail: "rhik@tothenew.com", joiningDate: 2017 , isPresent: true, competency: "java" , attendancePercent: 160) ,
                                     toTheNew(empID: 004, empName: "Spandan", empEmail: "spandan@tothenew.com", joiningDate: 2018 , isPresent: true, competency: "feen" , attendancePercent: 81) ,
                                     toTheNew(empID: 001, empName: "Anindya", empEmail: "anindya@tothenew.com", joiningDate: 2018 , isPresent: false, competency: "ios" , attendancePercent: 89) ,
                                     toTheNew(empID: 005, empName: "Tania", empEmail: "tania@tothenew.com", joiningDate: 2018 , isPresent: true, competency: "android" , attendancePercent: 67)]
    func allowedForBonus (Email :String) throws
    {
        let PresentYear = 2019
        var eligiblity = 0
        for emp1 in TTNEmployees
        {
            if(Email == emp1.empEmail)
            {
                if !emp1.isPresent
                {
                    eligiblity = 0
                    throw noBonusReasons.EmployeenotPresent(" is absent")
                }
                else
                {
                    eligiblity = 1
                }
                if (emp1.competency == "ios" || emp1.competency == "android" || emp1.competency == "BigData" || emp1.competency == "AI")
                {
                    eligiblity = 1
                }
                else
                {
                    eligiblity = 0
                    throw noBonusReasons.Competency("competency does not fall under bonus program.")
                }
                if( (PresentYear - emp1.joiningDate) > 0)
                {
                    eligiblity = 1
                }
                else
                {
                    eligiblity = 0
                    throw noBonusReasons.notCompletedoneYear("and still to complete a year with us")
                }
                if (emp1.attendancePercent >= 80)
                {
                    eligiblity = 1
                }
                else
                {
                    eligiblity = 0
                    throw noBonusReasons.attendanceLessThenEighty("do not have attandance more then eighty percent")
                }
                if(eligiblity == 1)
                {
                    print(emp1.empName ," is eligible for bonus.")
                }
            }
        }
    }
}
var obj1 = BonusProgram()
do{
    try obj1.allowedForBonus(Email: "anindya@tothenew.com")
}
catch
{
    print(error)
}
do{
    try obj1.allowedForBonus(Email: "akash@tothenew.com")
}
catch
{
    print(error)
}
do{
    try obj1.allowedForBonus(Email: "rhik@tothenew.com")
}
catch
{
    print(error)
}

do{
    try obj1.allowedForBonus(Email: "spandan@tothenew.com")
}
catch
{
    print(error)
}

do{
    try obj1.allowedForBonus(Email: "tania@tothenew.com")
}
catch
{
    print(error)
}


