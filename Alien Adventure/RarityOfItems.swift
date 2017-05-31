//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rarityDictionary = [UDItemRarity.common: 0, UDItemRarity.uncommon: 0, UDItemRarity.rare: 0, UDItemRarity.legendary: 0]
        var addCommon = 0
        var addUncommon = 0
        var addRare = 0
        var addLegendary = 0
        
//        print("Before loop: \(rarityDictionary)")
        
        for item in inventory {
            if item.rarity == UDItemRarity(rawValue: 0) {
                addCommon += 1
                rarityDictionary[UDItemRarity.common] = addCommon
//                print(item.rarity)
//                print(rarityDictionary)
            }
            if item.rarity == UDItemRarity(rawValue: 1) {
                addUncommon += 1
                rarityDictionary[UDItemRarity.uncommon] = addUncommon
//                print(item.rarity)
//                print(rarityDictionary)
            }
            if item.rarity == UDItemRarity(rawValue: 2) {
                addRare += 1
                rarityDictionary[UDItemRarity.rare] = addRare
//                print(item.rarity)
//                print(rarityDictionary)
            }
            if item.rarity == UDItemRarity(rawValue: 3) {
                addLegendary += 1
                rarityDictionary[UDItemRarity.legendary] = addLegendary
//                print(item.rarity)
//                print(rarityDictionary)
            }
        }
        return rarityDictionary
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
