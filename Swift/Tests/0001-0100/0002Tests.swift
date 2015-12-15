//
//  0002Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0002Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0002.init(seq: Fibonacci.init(root: [1, 2])).solve(10, limit: nil), 44)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0002.init().solve(nil, limit: 4000000), 4613732)
        }
    }

}