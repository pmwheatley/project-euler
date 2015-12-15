//
//  0004Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0004Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0004.init().solve(99, min: 10), 9009)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0004.init().solve(999, min: 100), 906609)
        }
    }

}
