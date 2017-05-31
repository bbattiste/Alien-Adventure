//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        if inventory == [] {
            return nil
        }
        print(inventory)
        var characterArray = [Character]()
        for item in inventory {
            for character in item.name.characters {
                characterArray.append(character)
            }
        }
        
        var most: Character = " "
        var number = 0
        for element in characterArray {
            if number < characterArray.filter({$0 == element}).count {
                number = characterArray.filter({$0 == element}).count
                most = element
            }
        }
        return most
    }
}
