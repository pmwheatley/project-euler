//
//  0001Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0001Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0001.init().solve(0...9, factors:[3,5]), 23)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0001.init().solve(0...999, factors:[3,5]), 233168)
        }
    }

}