//
//  getNumberOfDivisors.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func getNumberOfDivisors() -> Int {

        let factors = self.getPrimeFactors()
        var counts:[Int:Int] = [:]
        
        for i in factors {
            counts[i] = (counts[i] ?? 0) + 1
        }
        
        var numDivisors = 1
        for (_, value) in counts {
            numDivisors *= value + 1
        }
        
        return numDivisors
        
    }

}