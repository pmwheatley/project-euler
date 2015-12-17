//
//  sumOfSquares.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array where Element:IntegerType {

    func sumOfSquares() -> Int {
        
        var sum = 0

        for i in self {
            sum += Int(pow(Double(i as! Int), Double(2)))
        }

        return sum

    }

}