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
    }
    
    var id = UUID()
    var name: String
    var position = 0
    var finishLine = 10
    
    init(name: String) {
        self.name = name
    }
    
    func roll(_ roll: Int, speed: Speed) {
        if speed == .NORMAL {
            if roll.isMultiple(of: 2) {
                self.position += 2
            } else {
                self.position += 1
            }
        } else if speed == .SUPER {
            self.position += roll
        }
    }
}
