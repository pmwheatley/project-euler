//
//  isMultipleOf.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {

    func isMultipleOf(factor: Int) -> Bool {

        return (self % factor) == 0

    }

}