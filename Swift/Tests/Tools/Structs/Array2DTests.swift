//
//  Array2DTests.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import XCTest
@testable import Problems

class Array2DTests: XCTestCase {
    
    var data: [[Int]]!
    var testData: Array2D<Int>!
    
    override func setUp() {
        super.setUp()
        self.data = [
            [08,02,22,97,38,15,00,40,00,75,04,05,07,78,52,12,50,77,91,08],
            [49,49,99,40,17,81,18,57,60,87,17,40,98,43,69,48,04,56,62,00],
            [81,49,31,73,55,79,14,29,93,71,40,67,53,88,30,03,49,13,36,65],
            [52,70,95,23,04,60,11,42,69,24,68,56,01,32,56,71,37,02,36,91],
            [22,31,16,71,51,67,63,89,41,92,36,54,22,40,40,28,66,33,13,80],
            [24,47,32,60,99,03,45,02,44,75,33,53,78,36,84,20,35,17,12,50],
            [32,98,81,28,64,23,67,10,26,38,40,67,59,54,70,66,18,38,64,70],
            [67,26,20,68,02,62,12,20,95,63,94,39,63,08,40,91,66,49,94,21],
            [24,55,58,05,66,73,99,26,97,17,78,78,96,83,14,88,34,89,63,72],
            [21,36,23,09,75,00,76,44,20,45,35,14,00,61,33,97,34,31,33,95],
            [78,17,53,28,22,75,31,67,15,94,03,80,04,62,16,14,09,53,56,92],
            [16,39,05,42,96,35,31,47,55,58,88,24,00,17,54,24,36,29,85,57],
            [86,56,00,48,35,71,89,07,05,44,44,37,44,60,21,58,51,54,17,58],
            [19,80,81,68,05,94,47,69,28,73,92,13,86,52,17,77,04,89,55,40],
            [04,52,08,83,97,35,99,16,07,97,57,32,16,26,26,79,33,27,98,66],
            [88,36,68,87,57,62,20,72,03,46,33,67,46,55,12,32,63,93,53,69],
            [04,42,16,73,38,25,39,11,24,94,72,18,08,46,29,32,40,62,76,36],
            [20,69,36,41,72,30,23,88,34,62,99,69,82,67,59,85,74,04,36,16],
            [20,73,35,29,78,31,90,01,74,31,49,71,48,86,81,16,23,57,05,54],
            [01,70,54,71,83,51,54,69,16,92,33,48,61,43,52,01,89,19,67,48]
        ]
        self.testData = Array2D.init(self.data)
    }
    
    func testGetHorizontals() {
        XCTAssertEqual(self.testData.getHorizontals()[0], self.data[0])
        XCTAssertEqual(self.testData.getHorizontals()[19], self.data[19])
    }
    
    func testGetVerticals() {
        XCTAssertEqual(self.testData.getVerticals()[0], [8, 49, 81, 52, 22, 24, 32, 67, 24, 21, 78, 16, 86, 19, 4, 88, 4, 20, 20, 1])
        XCTAssertEqual(self.testData.getVerticals()[19],[8, 0, 65, 91, 80, 50, 70, 21, 72, 95, 92, 57, 58, 40, 66, 69, 36, 16, 54, 48])
    }

    func testGetLeadingDiagonal() {
        XCTAssertEqual(self.testData.getLeadingDiagonal(), [8, 49, 31, 23, 51, 3, 67, 20, 97, 45, 3, 24, 44, 52, 26, 32, 40, 4, 5, 48])
    }

    func testGetAllLeadingDiagonals() {
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[0], [1])
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[1], [20, 70])
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[18], [49, 49, 95, 71, 99, 23, 12, 26, 20, 94, 88, 37, 86, 26, 12, 32, 74, 57, 67])
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[19], self.testData.getLeadingDiagonal())
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[20], [2, 99, 73, 4, 67, 45, 10, 95, 17, 35, 80, 0, 60, 17, 79, 63, 62, 36, 54])
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[37], [91, 0])
        XCTAssertEqual(self.testData.getAllLeadingDiagonals()[38], [8])
    }

    func testGetTrailingDiagonal() {
        XCTAssertEqual(self.testData.getTrailingDiagonal(), [8, 62, 13, 37, 28, 84, 54, 63, 78, 35, 94, 55, 7, 47, 35, 57, 73, 36, 73, 1])
    }

    func testGetAllTrailingDiagonals() {
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[0], [8])
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[1], [2, 49])
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[18], [91, 56, 49, 71, 40, 36, 59, 39, 78, 45, 15, 47, 89, 94, 97, 87, 16, 69, 20])
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[19], self.testData.getTrailingDiagonal())
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[20], [0, 36, 2, 66, 20, 70, 8, 96, 14, 3, 58, 5, 69, 99, 62, 38, 41, 35, 70])
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[37], [54, 67])
        XCTAssertEqual(self.testData.getAllTrailingDiagonals()[38], [48])
    }
    
}