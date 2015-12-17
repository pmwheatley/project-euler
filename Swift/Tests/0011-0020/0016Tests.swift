//
//  0016Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0016Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0016.init().solve(2, pow: 15), 26)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0016.init().solve(2, pow: 1000), 1366)
        }
    }
    
}