//
//  isPalindromic.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func isPalindromic() -> Bool {

        let digits:[Int] = String(self).characters.flatMap { Int(String($0)) }

        return digits == digits.reverse()

    }
    
}