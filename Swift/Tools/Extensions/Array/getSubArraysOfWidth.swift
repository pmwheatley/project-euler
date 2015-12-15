//
//  getSubArraysOfWidth.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array {
    
    func getSubArraysOfWidth(width: Int) -> [Array] {

        var subs = [Array]()
        
        if width > self.count {
            return subs
        } else {
            for index in 0..<(self.count - width) {
                subs.append( Array(self[index..<(index + width)]))
            }
        }
        
        return subs

    }
    
}