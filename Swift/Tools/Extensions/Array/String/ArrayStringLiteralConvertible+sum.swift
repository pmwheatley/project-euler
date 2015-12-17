//
//  sum.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array where Element:StringLiteralConvertible {
    
    func sum() -> String {
        
        var result = String("")
        for number in self {
            result = result.addNumeric(String(number))
        }
        return result
        
    }
    
}