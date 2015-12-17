//
//  String+multiplyNumeric.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension String {

    func multiplyNumeric(string: String) -> String {
        
        if self.isNumeric() && string.isNumeric() {
            
            let left:[Int] = Array(self.characters).reverse().map() { Int(String($0)) ?? 0 }
            let right:[Int] = Array(string.characters).reverse().map() { Int(String($0)) ?? 0 }
            
            var results:[Int] = [Int]()
            for (j, rightNumber) in right.enumerate() {
                
                for (i, leftNumber) in left.enumerate() {
                    
                    let mulResult = leftNumber * rightNumber
                    addToResult(&results, addResult: mulResult, index: i + j)
                }
            }
            
            return (results.reverse().map() { String($0) } ).joinWithSeparator("")
            
        } else {
            
            return ""
            
        }
    }

}