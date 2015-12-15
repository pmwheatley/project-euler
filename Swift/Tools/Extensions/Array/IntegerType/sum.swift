//
//  sum.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array where Element:IntegerType {

    func sum() -> Int {

        return self.map { $0 as! Int }.reduce(0) { $0 + $1 }
    
    }

}