//: ## Classes - into and basic syntax
//: [Previous](@previous)

import Foundation

class Car {
    
    // properties
    var name = ""
    var milage = 0
    
    // methods
    func description() -> String {
        return "The \(name) has \(milage) miles on it."
    }
    
    // initalizers and / or custom initializers
}

var viper = Car()
viper.name = "Viper"
viper.milage = 10000
viper.description()

//: [Next](@next)
