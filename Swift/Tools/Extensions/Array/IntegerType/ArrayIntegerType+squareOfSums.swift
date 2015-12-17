//
//  squareOfSums.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array where Element:IntegerType {

    func squareOfSum() -> Int {
    
        return Int(pow(Double(self.sum()), Double(2)))

    }

}