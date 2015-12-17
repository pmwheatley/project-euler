//
//  String+raiseNumericToPower.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension String {    
    
    func raiseNumericToPower(var pow: Int) -> String {
        
        var result:String = "1"
        while pow > 0 {
            result = result.multiplyNumeric(self)
            pow--
        }
        
        return result
        
    }

}