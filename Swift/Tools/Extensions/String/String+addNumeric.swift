//
//  addNumeric.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension String {
    
    func addNumeric(string:String) -> String {
        
        func addToResult(inout results:[Int], var addResult:Int, index:Int) {
            
            if index == results.count {
                results.append(0)
            }
            
            addResult = results[index] + addResult
            
            let result = addResult % 10
            results[index] = result
            
            let retain = addResult / 10
            if retain > 0 {
                addToResult(&results, addResult: retain, index: index + 1)
            }
        }
        
        if self.isNumeric() && string.isNumeric() {
        
            let leftNumbers:[Int] = Array(self.characters).reverse().map() { Int(String($0)) ?? 0 }
            let rightNumbers:[Int] = Array(string.characters).reverse().map() { Int(String($0)) ?? 0 }
        
            var results:[Int] = [Int]()
            let index = max(leftNumbers.count, rightNumbers.count)
        
            var i = 0
            while i < index {

                let leftNumber = i >= leftNumbers.count ? 0 : leftNumbers[i]
                let rightNumber = i >= rightNumbers.count ? 0 : rightNumbers[i]
            
                let addResult = leftNumber + rightNumber
                addToResult(&results, addResult: addResult, index:i)
            
                i++
            }
        
            return (results.reverse().map() { String($0) } ).joinWithSeparator("")
            
        } else {
            
            return ""

        }
    }
    
}