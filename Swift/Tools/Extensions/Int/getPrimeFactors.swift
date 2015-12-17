//
//  primeFactorize.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func getPrimeFactors() -> [Int] {
        
        var factors: [Int] = []
        var n = self
        
        for var candidate:Int = 2; n > 1 ; candidate++ {
            for var _:Int ; n % candidate == 0; n /= candidate {
            factors.append(candidate);
            }
        }
        
        return factors
    
    }
}