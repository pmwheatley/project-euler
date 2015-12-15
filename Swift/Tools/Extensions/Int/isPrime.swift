//
//  isPrime.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    static var primeCache = Dictionary<Int, Bool>()

    func isPrime() -> Bool {

        if self < 2 { return false }
        if self == 2 || self == 3 { return true }
        if self % 2 == 0 { return false }
        if let _ = Int.primeCache[self] { return true }
        
        let upperBound: Int = Int(sqrt(Double(self)))
        for i in 2...upperBound {
            if self % i == 0 {
                return false
            }
        }
        Int.primeCache[self] = true

        return true

    }
    
}