//
//  0010Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0010Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0010.init().solve(10), 17)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0010.init().solve(2000000), 142913828922)
        }
    }
    
}
