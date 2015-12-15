//
//  largestPrimeFactor.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func largestPrimeFactor() -> Int {

        for factor in 2...self.largestPossibleFactor() {
            if self.isMultipleOf(factor) {
                return (self/factor).largestPrimeFactor()
            }
        }

        return self

    }
    
}