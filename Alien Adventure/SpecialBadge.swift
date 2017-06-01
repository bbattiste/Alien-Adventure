//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    
    let specialBadge = SKSpriteNode(imageNamed: "BadgeTeal").texture

    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        self.texture = SKTexture(imageNamed: "BadgeTeal")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum BadgeAnimation: Int {
        case growAndShrink, rotate, shake
    }
    
}
