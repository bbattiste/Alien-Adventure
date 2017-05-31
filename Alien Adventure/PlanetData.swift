//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let planetJSON = Bundle.main.url(forResource: "PlanetData", withExtension: "json")!
        let rawPlanetJSON = try! Data(contentsOf: planetJSON)
        
        var allPlanetsJSON: [[String:Any]]
        do {
            allPlanetsJSON = try!
                JSONSerialization.jsonObject(with: rawPlanetJSON, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        var highestPointPlanet = ""
        var mostPoints = 0
        for planet in allPlanetsJSON {
            var currentPlanetPoints = 0
            if let commonItemsDetected = planet["CommonItemsDetected"] as? Int {
                currentPlanetPoints += commonItemsDetected
            }
            if let uncommonItemsDetected = planet["UncommonItemsDetected"] as? Int {
                currentPlanetPoints += (uncommonItemsDetected * 2)
            }
            if let rareItemsDetected = planet["RareItemsDetected"] as? Int {
                currentPlanetPoints += (rareItemsDetected * 3)
            }
            if let legendaryItemsDetected = planet["LegendaryItemsDetected"] as? Int {
                currentPlanetPoints += (legendaryItemsDetected * 4)
            }
            if currentPlanetPoints > mostPoints {
                mostPoints = currentPlanetPoints
                if let mostPointPlanetSoFar = planet["Name"] as? String {
                    highestPointPlanet = mostPointPlanetSoFar
                }
            }
        }
        return highestPointPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
