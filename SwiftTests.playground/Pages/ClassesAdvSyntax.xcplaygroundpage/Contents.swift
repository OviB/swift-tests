//: ## Classes - advanced syntax. Properties, methods, initializers, and instances.
//: [Previous](@previous)

import Foundation

class Player {
    
    // properties
    var name : String
    var score : Int
    
    
    // methods
    func description() -> String {
        return "Player \(name) has a score of \(score)."
    }
    
    
    // default initializer
    init() {
        name = "John Doe"
        score = 0
    }
    
    
    // initializer with parameters
    init(name: String, score: Int) {
        self.name = name
        self.score = score
        // 'self' refers to the property name in this class
    }
    
    // deinitializer
    deinit {
        // cleanup code goes here
    }
}


var defaultPlayer = Player()
defaultPlayer.description()

var ovi = Player(name: "Ovi", score: 10)
ovi.description()



//: [Next](@next)
