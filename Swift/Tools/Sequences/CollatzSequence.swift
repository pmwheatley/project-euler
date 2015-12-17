//
//  CollatzSequence.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

// Collatz - A070165?

class Collatz : SequenceType {
    
    var root: Int
    
    typealias GeneratorType = CollatzGenerator
    
    init(root: Int = 1) {
        self.root = root > 0 ? root : 1
    }
    
    func generate() -> CollatzGenerator {
        return CollatzGenerator(root: self.root)
    }
}

class CollatzGenerator : GeneratorType {
    var current: Int
    var firstDone = false
    
    typealias Element = Int
    
    init(root: Int = 1) {
        self.current = root
    }
    
    func next() -> Int? {
        if !firstDone {
            firstDone = true
            return current
        }
        var nextValue: Int
        if current == 1 { return nil }
        if current.isEven() {
            nextValue = current / 2
        } else {
            nextValue = 3 * current + 1
        }
        current = nextValue
        return nextValue
    }
}

func getCollatzSequenceLengthForRoot(var number:Int, inout steps:[Int]) -> Int {

    var numberOfSteps = 0
    var found = false
    let initialNumber = number
    
    while (found == false) {
        
        if number % 2 == 0 {
            number /= 2
        } else {
            number = (number * 3 + 1) / 2
            numberOfSteps++
        }
        
        found = number < steps.count ? steps[number] > 0 : false
        numberOfSteps++
    }
    
    numberOfSteps += steps[number]
    steps[initialNumber] = numberOfSteps
    
    return numberOfSteps
}

func getLongestCollatzSequence(maxNumber: Int) -> (Int, Int) {
    var collatzSequence = (number:0, steps:0)
    var steps:[Int] = [Int](count: maxNumber, repeatedValue: 0)
    steps[1] = 1
    
    for var number = 2; number < maxNumber; number++ {
        
        let steps = getCollatzSequenceLengthForRoot(number, steps:&steps)
        if steps > collatzSequence.steps {
            collatzSequence = (number, steps)
        }
    }
    
    return collatzSequence
}

let CollatzSequence = Collatz.init()