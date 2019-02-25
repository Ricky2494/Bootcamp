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
func answer2(country: String) -> String{
    print("\nAnswer 2:")
    for personalEmp in personalArray {
        for professionalEmp in professionalArray{
            if (personalEmp.employeeID == professionalEmp.employeeID && personalEmp.country==country)
            {
                print(personalEmp)
            }
        }
    }
    return country
}
answer2(country: "India")

//Question 3: write a function that give me list of all the employee that live in certain department
func answer3(department: String) -> String{
    print("\nAnswer 3:")
    for emp in empArray {
        if (emp.department==department)
        {
            print(emp)
        }
    }
    return department
}
answer3(department: "Android")

//Question 4: write a function that give me list of all the employee that live in same country and work in the same branch.
func answer4(ans: String) -> String{
    print(ans)
    for emp1 in empArray {
        for emp2 in empArray {
            if (emp1.country == emp2.branch) {
                print(emp1)
            }
        }
    }
    return ans
}
answer4(ans: "\nAnswer 4:")

//Question 5: write a function that return me list of all the employee name that has a hobby and with their experience.
func answer5(ans :String) -> String{
    print(ans)
    for emp in empArray {
        print("ID: \(emp.employeeID), Name: \(emp.name), Hobbies: \(emp.hobbies ?? "NA"), Experience: \(emp.experience)")
    }
    return ans
}
answer5(ans: "\nAnswer 5:")

//Question 6: write a function that return me list of all the employee name that starts with any “S”
func answer6(prefix: String) -> String{
    print("\nAnswer6")
    for emp in empArray {
        if (emp.name.prefix(1)==prefix) {
            print(emp)
        }
    }
    return prefix

}
answer6(prefix: "S")
