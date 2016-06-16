//: ## Classes - subclasses
//: [Previous](@previous)
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

class PoliceOfficer : Person {
    
    // property
    var rank : String
    
    init(rank: String) {
        self.rank = rank
        super.init(firstName: "", lastName: "", age: 0, occupation: "", hoursPerWeek: 0, hourlyRate: 0)
        
    }
    
    override func description() -> String {
        return "\(fullName) is a \(age) year old \(occupation) who is rank \(rank) and works about \(hoursPerWeek) hours per week and makes a weekly salary of $\(weeklySalary)."
    }
    
    
}
var pol = PoliceOfficer(rank: "Lut")

pol.description()



//: [Next](@next)
