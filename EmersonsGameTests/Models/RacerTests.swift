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
    
    func testRollMustMustMovePositionBy2IfEvenAndNormalSpeed() {
        let racer = Racer(name: "Racer 1")
        let racer2 = Racer(name: "Racer 2")
        let racer3 = Racer(name: "Racer 3")
        
        racer.roll(2, speed: .NORMAL)
        racer2.roll(4, speed: .NORMAL)
        racer3.roll(6, speed: .NORMAL)
        
        XCTAssertEqual(racer.position, 2)
        XCTAssertEqual(racer2.position, 2)
        XCTAssertEqual(racer3.position, 2)
    }
    
    func testRollMustMustMovePositionByRollIfSuperSpeed() {
        let racer = Racer(name: "Racer 1")
        let racer2 = Racer(name: "Racer 2")
        let racer3 = Racer(name: "Racer 3")
        let racer4 = Racer(name: "Racer 4")
        let racer5 = Racer(name: "Racer 5")
        let racer6 = Racer(name: "Racer 6")
        
        racer.roll(1, speed: .SUPER)
        racer2.roll(2, speed: .SUPER)
        racer3.roll(3, speed: .SUPER)
        racer4.roll(4, speed: .SUPER)
        racer5.roll(5, speed: .SUPER)
        racer6.roll(6, speed: .SUPER)
        
        XCTAssertEqual(racer.position, 1)
        XCTAssertEqual(racer2.position, 2)
        XCTAssertEqual(racer3.position, 3)
        XCTAssertEqual(racer4.position, 4)
        XCTAssertEqual(racer5.position, 5)
        XCTAssertEqual(racer6.position, 6)
    }
}
