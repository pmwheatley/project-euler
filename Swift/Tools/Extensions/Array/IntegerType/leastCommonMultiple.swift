//
//  leastCommonMultiple.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array where Element:IntegerType {

    func leastCommonMultiple() -> Int {
    
        func greatestCommonDenominator(a: Int, b: Int) -> Int {
            return b == 0 ? a : greatestCommonDenominator(b, b: a % b)
        }
    
        func leastCommonMultiple(a: Int, b: Int) -> Int {
            return a * (b / greatestCommonDenominator(a, b: b))
        }
    
        var result = (self[0] as! Int)
        
        for value in self {
            result = leastCommonMultiple(result, b: (value as! Int))
        }

        return result

    }

}