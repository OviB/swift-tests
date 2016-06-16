//: ## Classes - access levels and computed properties. (internal, public, private)
//: [Previous](@previous)

// default class modifiers are 'inernal' which mean any file whitin the project has access to it
// private class modifier means that only this file has access to this class
// public class modifier means that anyone has access to it

import Foundation

class Person {
    
    // stored properties
    var firstName : String
    var lastName : String
    var age : Int
    var occupation : String
    var hoursPerWeek : Double
    var hourlyRate : Double
    static var employer = "Apple" // ONLY the class can modify static variables
    static var insurance = "AAA"
    
    // computed properties
    var weeklySalary : Double {
        return hoursPerWeek * hourlyRate
    }
    var fullName : String {
        return "\(firstName) \(lastName)"
    }
    
    // methods
    func description() -> String {
        return "\(fullName) is a \(age) year old \(occupation) who works about \(hoursPerWeek) hours per week and makes a weekly salary of $\(weeklySalary)."
    }
    
    // custom initializer
    init(firstName: String, lastName: String, age: Int, occupation: String, hoursPerWeek: Double, hourlyRate: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.occupation = occupation
        self.hoursPerWeek = hoursPerWeek
        self.hourlyRate = hourlyRate
    }
    
}

var bill = Person(firstName: "Bill", lastName: "Smith", age: 25, occupation: "Developer", hoursPerWeek: 40, hourlyRate: 22.89)

bill.description()

Person.employer = "Google"


//: [Next](@next)
