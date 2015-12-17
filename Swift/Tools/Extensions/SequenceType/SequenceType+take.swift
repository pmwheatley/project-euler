//
//  take.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension SequenceType {
    
    func take(n: Int) -> [Generator.Element] {
        
        var result: [Generator.Element] = []
        var g = self.generate()
        
        for _ in 1...n {
            if let next = g.next() {
                result.append(next)
            } else {
                break
            }
        }
        
        return result

    }

}