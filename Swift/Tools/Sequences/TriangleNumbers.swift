//
//  TriangleNumbers.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

// Triangle Numbers - A000217

class TriangleNumber : SequenceType {
    typealias GeneratorType = TriangleNumberGenerator
    
    func generate() -> TriangleNumberGenerator {
        return TriangleNumberGenerator()
    }
}

class TriangleNumberGenerator : GeneratorType {
    var index = 0
    var current = 0
    
    typealias Element = Int
    
    func next() -> Int? {
        current = current + index
        index++
        return current
    }
}

func getNthTriangleNumber(n: Int) -> Int {
    return n*(n+1)/2
}

let TriangleNumberSequence = TriangleNumber.init()