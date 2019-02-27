import UIKit

var str = "Exercise 2: Introduction to Swift"

//Personal Information Structure
struct PersonalInformation {
    var employeeID: Int
    var name: String
    var country: String
    var address: String
    var hobbies: String?
}

//Creating a static variable to choose from only given contries by creating tuples
let definedCountry = (America: "America", India: "India", Britain: "Britain", Japan: "Japan", China: "China")

//Adding entries in Personal Structure
var personalArray: [PersonalInformation] = []

personalArray.append(PersonalInformation(employeeID: 01, name: "Anindya", country: definedCountry.India, address: "Kolkata", hobbies: "Cricket"))
personalArray.append(PersonalInformation(employeeID: 02, name: "Rhik", country: definedCountry.America, address: "America", hobbies: "Cricket"))
personalArray.append(PersonalInformation(employeeID: 03, name: "Akash", country: definedCountry.Britain, address: "England", hobbies: "Football"))
personalArray.append(PersonalInformation(employeeID: 04, name: "Spandan", country: definedCountry.Japan, address: "Hiroshima", hobbies: "Cooking"))
personalArray.append(PersonalInformation(employeeID: 125, name: "Tania", country: definedCountry.China, address: "Shanghai", hobbies: "Gardening"))


//Professional Information Structure
struct ProfessionalInformation {
    var employeeID: Int
    var name: String
    var department: String
    var branch: String
    var experience: Int
}

//Creating static variables to choose from given Department and Branch by creating tuples
let definedDepartment = (iOS: "iOS", Android: "Android", JVM: "JVM", FullStack: "Full Stack", Web: "Web")
let definedBranch = (America: "America", India: "India", Britain: "Britain", Japan: "Japan", China: "China")

//Adding entries in Professional Structure
var professionalArray: [ProfessionalInformation] = []

professionalArray.append(ProfessionalInformation(employeeID: 01, name: "Anindya", department: definedDepartment.iOS, branch: definedBranch.India, experience: 3))
professionalArray.append(ProfessionalInformation(employeeID: 02, name: "Rhik", department: definedDepartment.Android, branch: definedBranch.America, experience: 1))
professionalArray.append(ProfessionalInformation(employeeID: 03, name: "Akash", department: definedDepartment.JVM, branch: definedBranch.Britain, experience: 5))
professionalArray.append(ProfessionalInformation(employeeID: 04, name: "Spandan", department: definedDepartment.FullStack, branch: definedBranch.Japan, experience: 2))
professionalArray.append(ProfessionalInformation(employeeID: 007, name: "James Bond", department: definedDepartment.Web, branch: definedBranch.America, experience: 5))

//Question 1: create a third employee structure that contains the information from both based on common id.
struct Employee {
    var employeeID: Int
    var name: String
    var department: String
    var branch: String
    var experience: Int
    var address: String
    var country: String
    var hobbies: String?
}

//Adding entries in Employee structure
var empArray: [Employee] = []

for personalEmp in personalArray {
    for professionalEmp in professionalArray {
        if (personalEmp.employeeID == professionalEmp.employeeID) {
            empArray.append(Employee(employeeID: personalEmp.employeeID, name: personalEmp.name, department: professionalEmp.department, branch: professionalEmp.branch, experience: professionalEmp.experience, address: personalEmp.address, country: personalEmp.country, hobbies: personalEmp.hobbies))
        }
    }
}

print("Answer 1:")
for index in empArray {
    print(index)
}

//Question 2: write a function that takes the two structure and give me list of all the employee that live in certain country
func answer2(country: String) -> [Employee]{
    print("\nAnswer 2:")
    var result: [Employee]
    for personalEmp in 0...personalArray.count-1 {
        for professionalEmp in 0...professionalArray.count-1 {
            if (empArray[personalEmp].employeeID == empArray[professionalEmp].employeeID && empArray[personalEmp].country==country)
            {
                result = (empArray[personalEmp])
            }
        }
    }
    return result
}
var result: [Employee] = answer2(country: "India")
//for emp in 0...result.count-1 {
    print(result)
//}

//Question 3: write a function that give me list of all the employee that live in certain department
func answer3(department: String) -> [Employee]{
    print("\nAnswer 3:")
    var result = [Employee]()
    for emp in 0...empArray.count-1 {
        if (empArray[emp].department==department)
        {
            result.append(empArray[emp])        }
    }
    return result
}
var result3 = answer3(department: "Android")
for emp in 0...result3.count-1 {
    print(result3[emp])
}

//Question 4: write a function that give me list of all the employee that live in same country and work in the same branch.
func answer4(ans: String) -> [Employee]{
    var result = [Employee]()
    for emp1 in 0...empArray.count-1 {
        for emp2 in 0...empArray.count-1 {
            if (empArray[emp1].country == empArray[emp2].branch) {
                result.append(empArray[emp2])                    }
        }
    }
    return result
}
var result4 = answer4(ans: "answer 4")
for emp3 in 0...result4.count-1 {
    print(result4[emp3])
}

//Question 5: write a function that return me list of all the employee name that has a hobby and with their experience.
func answer5(ans :String) -> [Employee]{
    var result = [Employee]()
    for emp in 0...empArray.count-1 {
        print("ID: \(empArray[emp].employeeID), Name: \(empArray[emp].name), Hobbies: \(empArray[emp].hobbies ?? "NA"), Experience: \(empArray[emp].experience)")
             }
    return result
}

var result5 = answer5(ans: "answer 5")
for emp5 in 0...result5.count-1 {
    print(result5[emp5])
}

//Question 6: write a function that return me list of all the employee name that starts with any “S”
func answer6(prefix: String) -> [Employee]{
    print("\nAnswer6")
    for emp6 in empArray {
        if (empArray[emp6].name.prefix(1)==prefix) {
            print(empArray[emp6].name)
        }
    }
    return prefix

}
var result6 = answer6(ans: "answer 6")
for emp6 in 0...result6.count-1 {
    print(result6[emp6])
}
