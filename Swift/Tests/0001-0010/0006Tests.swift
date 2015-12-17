//
//  0006Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0006Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0006.init().solve(1...10), 2640)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0006.init().solve(1...100), 25164150)
        }
    }

}
