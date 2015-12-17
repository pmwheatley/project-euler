//
//  CentralBinomialCoefficientsSequence.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

// Central Binomial Coefficients - A000984

class CentralBinomialCoefficients : SequenceType {
    typealias GeneratorType = CentralBinomialCoefficientsGenerator
    
    func generate() -> CentralBinomialCoefficientsGenerator {
        return CentralBinomialCoefficientsGenerator()
    }
}

class CentralBinomialCoefficientsGenerator : GeneratorType {
    var current = 1
    
    typealias Element = Int
    
    func next() -> Int? {
        return 0
    }
}

func getNthBinomialCoefficient(n: Double) -> Double {
    return (2*n).factorial() / pow(n.factorial(), 2)
}

let CentralBinomialCoefficientsSequence = CentralBinomialCoefficients.init()