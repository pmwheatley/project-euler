//
//  isMultipleOfAll.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {

    func isMultipleOfAll(factors: [Int]) -> Bool {

        for factor in factors {
            if self.isMultipleOf(factor) {
                return true
            }
        }

        return false

    }

}