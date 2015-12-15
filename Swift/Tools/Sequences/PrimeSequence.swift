//
//  PrimeSequence.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

// Primes - A000040

class Prime : SequenceType {
    typealias GeneratorType = PrimeGenerator
    
    func generate() -> PrimeGenerator {
        return PrimeGenerator()
    }
}

class PrimeGenerator : GeneratorType {
    var current = 1
    var firstDone = false
    
    typealias Element = Int
    
    func next() -> Int? {
        if !firstDone {
            firstDone = true
            return 2
        }
        var next = current + 2
        while !next.isPrime() {
            next += 2
        }
        current = next
        return current
    }
}

let PrimeSequence = Prime.init()