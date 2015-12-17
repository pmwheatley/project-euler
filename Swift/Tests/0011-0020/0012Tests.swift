//
//  0012Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0012Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0012.init().solve(5), 28)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0012.init().solve(500), 76576500)
        }
    }
    
}
