//
//  0015Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0015Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0015.init().solve(2), 6)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0015.init().solve(20), 137846528820)
        }
    }
    
}