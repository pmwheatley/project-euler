//
//  isNumeric.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension String {
    
    func isNumeric() -> Bool {
        for i in self.characters {
            if Int(String(i)) == nil {
                return false
            }
        }
        return true
    }
    
}