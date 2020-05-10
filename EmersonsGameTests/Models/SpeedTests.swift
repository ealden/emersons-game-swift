//
//  SpeedTests.swift
//  EmersonsGameTests
//
//  Created by Ealden Escañan on 5/10/20.
//  Copyright © 2020 Ealden Escañan. All rights reserved.
//

import XCTest
@testable import EmersonsGame

class SpeedTests: XCTestCase {
    func testCalculate() {
        XCTAssertEqual(Racer.Speed.NORMAL.calculate(1), 1)
        XCTAssertEqual(Racer.Speed.NORMAL.calculate(2), 2)
        XCTAssertEqual(Racer.Speed.NORMAL.calculate(3), 1)
        XCTAssertEqual(Racer.Speed.NORMAL.calculate(4), 2)
        XCTAssertEqual(Racer.Speed.NORMAL.calculate(5), 1)
        XCTAssertEqual(Racer.Speed.NORMAL.calculate(6), 2)
        
        XCTAssertEqual(Racer.Speed.SUPER.calculate(1), 1)
        XCTAssertEqual(Racer.Speed.SUPER.calculate(2), 2)
        XCTAssertEqual(Racer.Speed.SUPER.calculate(3), 3)
        XCTAssertEqual(Racer.Speed.SUPER.calculate(4), 4)
        XCTAssertEqual(Racer.Speed.SUPER.calculate(5), 5)
        XCTAssertEqual(Racer.Speed.SUPER.calculate(6), 6)
    }
}
