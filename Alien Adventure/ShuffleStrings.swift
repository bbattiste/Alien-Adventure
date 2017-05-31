//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
// ab cd cabd

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        // 1.
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        // 2.
        if shuffle.characters.count != (s1.characters.count + s1.characters.count) {
            return false
        }
        
        // 3.
        var s1Array = [Character]()
        for element in s1.characters {
            s1Array.append(element)
        }
        
        var s2Array = [Character]()
        for element in s2.characters {
            s2Array.append(element)
        }
        
        var shuffleArray = [Character]()
        for element in shuffle.characters {
            shuffleArray.append(element)
        }
        
        var test1 = [Character]()
        var test2 = [Character]()
        
        for element in shuffleArray {
            if s1Array.contains(element) {
                test1.append(element)
            } else if s2Array.contains(element) {
                test2.append(element)
            }
        }
        print(test1)
        print(test2)
        
        return test1 == s1Array && test2 == s2Array
            
    }
}
