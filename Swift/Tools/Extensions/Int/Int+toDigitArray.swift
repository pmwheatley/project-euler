//
//  File.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func toDigitArray() -> [Int] {
        
        return Array(String(self).characters).map { Int(String($0)) ?? 0 }

    }
    
}