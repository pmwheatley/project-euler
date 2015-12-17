//
//  Int+factorial.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Double {

    func factorial() -> Double {
        if self >= 0 {
            return self == 0 ? 1 : self * (self - 1).factorial()
        } else {
            return 0
        }
    }

}