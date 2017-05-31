//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        let planetItems = itemsFromPlanet(inventory: inventory, planet: planet)
        if planetItems == [] {
            return nil
        }
        var oldestItem = planetItems[0]
        var oldestItemAge = 0
        for item in planetItems {
            if let sItem = (item.historicalData["CarbonAge"] as? Int) {
                if sItem > oldestItemAge {
                oldestItemAge = (item.historicalData["CarbonAge"] as! Int)
                oldestItem = item
                }
            }
        }
        return oldestItem
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
