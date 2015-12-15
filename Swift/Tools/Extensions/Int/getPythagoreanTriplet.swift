//
//  getPythagoreanTriplet.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Int {
    
    func getPythagoreanTriplet() -> (Int, Int, Int) {
        
        for var a = 1; a <= (self - 3)/3; a++ {
            for var b = a + 1; b <= (self-1-a)/2; b++ {
                let c = self - a - b
                if a*a + b*b == c*c {
                    return (a, b, c)
                }
            }
        }

        return (-1, -1, -1)

    }
    
}