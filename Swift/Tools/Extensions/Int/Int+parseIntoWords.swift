//
//  Int+parseIntoWords.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func parseIntoWords() -> String {
        
        let unitNames:[String] = [
            "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"
        ]
        
        let tensNames:[String] = [
            "", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety", "hundred"
        ]
        
        var words:[String] = []
        
        if self >= 0 && self <= 19 {
            
            words.append(unitNames[self])
            
        } else if self >= 20 && self <= 99  {
            
            var digits = self.toDigitArray()
            
            words.append(tensNames[digits[0]])
            words.append(unitNames[digits[1]])
            
        } else if self >= 100 && self <= 999 {
            
            var digits = self.toDigitArray()
            
            if self % 100 == 0 {
                words.append(unitNames[digits[0]])
                words.append("hundred")
            } else {
                words.append(unitNames[digits[0]])
                words.append("hundred")
                words.append("and")
                var newNumber = self - digits[0] * 100;
                words.append(newNumber.parseIntoWords())
            }
            
        } else if self == 1000 {
            
            words.append("one")
            words.append("thousand")
            
        }
        
        return words.joinWithSeparator(" ")
    }
}