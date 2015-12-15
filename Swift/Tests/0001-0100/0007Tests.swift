//
//  0007Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0007Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0007.init().solve(6), 13)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0007.init().solve(10001), 104743)
        }
    }

}
