//
//  Racer.swift
//  EmersonsGame
//
//  Created by Ealden Escañan on 5/10/20.
//  Copyright © 2020 Ealden Escañan. All rights reserved.
//

import Foundation

class Racer: Identifiable {
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
    
    var id = UUID()
    var name: String
    var position = 0
    var finishLine = 10
    
    init(name: String) {
        self.name = name
    }
    
    func roll(_ roll: Int, speed: Speed) {
        self.position += speed.calculate(roll)
    }
}
