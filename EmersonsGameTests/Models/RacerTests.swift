//
//  RacerTests.swift
//  EmersonsGameTests
//
//  Created by Ealden Escañan on 5/10/20.
//  Copyright © 2020 Ealden Escañan. All rights reserved.
//

import XCTest
@testable import EmersonsGame

class RacerTests: XCTestCase {
    func testPositionMustDefaultTo0() {
        let racer = Racer(name: "Racer 1")
     
        XCTAssertEqual(racer.position, 0)
    }
    
    func testRollMustMustMovePositionBy1IfOddAndNormalSpeed() {
        let racer = Racer(name: "Racer 1")
        let racer2 = Racer(name: "Racer 2")
        let racer3 = Racer(name: "Racer 3")
        
        racer.roll(1, speed: .NORMAL)
        racer2.roll(3, speed: .NORMAL)
        racer3.roll(5, speed: .NORMAL)
        
        XCTAssertEqual(racer.position, 1)
        XCTAssertEqual(racer2.position, 1)
        XCTAssertEqual(racer3.position, 1)
    }
}
