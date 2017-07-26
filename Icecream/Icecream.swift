//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String:String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        
        var returnArray = [String]()
        
        for (name, flavors) in favoriteFlavorsOfIceCream {
            if flavor == flavors {
                returnArray.append(name)
            }
        }
        return returnArray
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var countInt = 0
        
        for (_, flavors) in favoriteFlavorsOfIceCream {
            if flavor == flavors {
                countInt += 1
            }
        }
        
        return countInt
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        
        var returnString:String = ""
        
        
        for name in favoriteFlavorsOfIceCream.keys {
            if person == name {
                returnString += favoriteFlavorsOfIceCream[name]!
            } else if !favoriteFlavorsOfIceCream.keys.contains(person) {
                return nil
            }
            
        }
        
        return returnString
        
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor changeFlavor: String, forPerson person: String) -> Bool {
        
        var returnBool = true
        
        if favoriteFlavorsOfIceCream.keys.contains(person) {
            favoriteFlavorsOfIceCream[person] = changeFlavor
            returnBool = true
        } else if !favoriteFlavorsOfIceCream.keys.contains(person) {
            returnBool = false
        }
        
        return returnBool
    }
    
    
    
    
    
    
    // 6.
    func remove(person personToRemove: String) -> Bool {
        var returnBool = true
        
        if favoriteFlavorsOfIceCream.keys.contains(personToRemove) {
            favoriteFlavorsOfIceCream[personToRemove] = nil
            returnBool = true
        } else if !favoriteFlavorsOfIceCream.keys.contains(personToRemove) {
            returnBool = false
        }
        
        return returnBool
    }
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        var numberOfAttendees = 0
        numberOfAttendees = favoriteFlavorsOfIceCream.keys.count
        return numberOfAttendees
    }
    
    
    
    
    
    
    
    // 8.
    func add(person personToAdd:String, withFlavor flavor: String) -> Bool {
        
        var returnBool = true
        
        if favoriteFlavorsOfIceCream.keys.contains(personToAdd) {
            returnBool = false
        } else if !favoriteFlavorsOfIceCream.keys.contains(personToAdd) {
            favoriteFlavorsOfIceCream[personToAdd] = flavor
            returnBool = true
        }
        
        return returnBool
    }
    
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        
        var returnString = ""
        
        var i = 1
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            returnString += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            if i < allNames.count {
                returnString += "\n"
                i += 1
            }
        }
        
        return returnString
        
    }
    
    
    
    
    
    

}
