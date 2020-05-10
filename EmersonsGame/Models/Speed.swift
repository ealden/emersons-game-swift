//
//  Speed.swift
//  EmersonsGame
//
//  Created by Ealden Escañan on 5/10/20.
//  Copyright © 2020 Ealden Escañan. All rights reserved.
//

import Foundation

enum Speed {
    case NORMAL, SUPER
    
    func calculate(_ roll: Int) -> Int {
        var calculatedRoll = roll
        
        if self == .NORMAL {
            calculatedRoll = (roll.isMultiple(of: 2)) ? 2 : 1
        }
        
        return calculatedRoll
    }
}
