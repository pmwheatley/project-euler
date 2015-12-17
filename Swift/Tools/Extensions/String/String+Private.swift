//
//  String+Private.swift
//  ProjectEuler
//
//  Created by convict7421 on 17/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension String {

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

}