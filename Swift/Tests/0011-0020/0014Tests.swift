//
//  0014Tests.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Problem0014Tests: XCTestCase {
    
    func testSampleNaive() {
        self.measureBlock {
            XCTAssertTrue(Problem0014.init().naiveSolve(10) == (9, 20))
        }
    }

    func testSampleSmart() {
        self.measureBlock {
            XCTAssertTrue(Problem0014.init().smartSolve(10) == (9, 20))
        }
    }

    func testSolutionNaive() {
        self.measureBlock {
            XCTAssertTrue(Problem0014.init().naiveSolve(1000000) == (837799, 525) )
        }
    }
    
    func testSolutionSmart() {
        self.measureBlock {
            XCTAssertTrue(Problem0014.init().smartSolve(1000000) == (837799, 525) )
        }
    }
    
}