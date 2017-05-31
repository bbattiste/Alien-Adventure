//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    let leftRarity = lhs.rarity.rawValue
    let rightRarity = rhs.rarity.rawValue
    if leftRarity == rightRarity {
        return lhs.baseValue < rhs.baseValue
    }
    return leftRarity < rightRarity
    // if left is smaller than right = return true
    // else, if both are equal rarities, if value of left is smaller, return true
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
