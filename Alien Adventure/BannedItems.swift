//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: "ItemList", withExtension: "plist")!
        
        let itemArray = NSArray(contentsOf: dataFileURL) as! [[String: Any]]
        
        var bannedItems = [Int]()
        for item in itemArray{
            if let name = item["Name"] as? String, name.contains("Laser") {
                bannedItems.append(item["ItemID"] as! Int)
//                print(bannedItems)
            }
            else {
                if let historicalData = item["HistoricalData"] as? [String:Int] {
                    let age = historicalData["CarbonAge"]
                    if age! < 30 {
                        bannedItems.append(item["ItemID"] as! Int)
                    }
                }
            }
        }
//        print(bannedItems)
        return bannedItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
