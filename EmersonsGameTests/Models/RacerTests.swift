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
}
