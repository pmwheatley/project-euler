//
//  0005Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0005Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0005.init().solve(1...10), 2520)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0005.init().solve(1...20), 232792560)
        }
    }

}