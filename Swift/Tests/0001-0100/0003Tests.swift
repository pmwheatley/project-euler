//
//  0003Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0003Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0003.init().solve(13195), 29)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0003.init().solve(600851475143), 6857)
        }
    }

}