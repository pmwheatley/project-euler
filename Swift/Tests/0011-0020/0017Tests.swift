//
//  0017Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0017Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0017.init().solve(1, to: 5), 19)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0017.init().solve(1, to:1000), 21124)
        }
    }
    
}