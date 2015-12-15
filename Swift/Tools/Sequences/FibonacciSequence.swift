//
//  FibonacciSequence.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

// Fibonacci - A000045

class Fibonacci : SequenceType {
    
    var root: [Int]
    
    typealias GeneratorType = FibonacciGenerator
    
    init(root: [Int] = [0, 1]) {
        self.root = root
    }
    
    func generate() -> FibonacciGenerator {
        return FibonacciGenerator(root: self.root)
    }
}

class FibonacciGenerator : GeneratorType {
    var current: Int
    var nextValue: Int
    
    typealias Element = Int
    
    init(root: [Int] = [0, 1]) {
        self.current = root[0]
        self.nextValue = root[1]
    }
    
    func next() -> Int? {
        let ret = current
        current = nextValue
        nextValue = nextValue + ret
        return ret
    }
}

let FibonacciSequence = Fibonacci.init()