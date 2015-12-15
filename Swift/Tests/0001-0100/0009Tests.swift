//
//  0009Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//


import XCTest
@testable import Problems

class Problem0009Tests: XCTestCase {
    
    func testSample() {
        self.measureBlock {
            XCTAssertEqual(Problem0009.init().solve(12), 60)
        }
    }
    
    func testSolution() {
        self.measureBlock {
            XCTAssertEqual(Problem0009.init().solve(1000), 31875000)
        }
    }

}
