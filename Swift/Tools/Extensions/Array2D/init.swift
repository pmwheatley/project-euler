//
//  init.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension Array2D {
    
    init(_ elements: [[T]]) {
        let rows = elements.count
        let cols = elements[0].count
        self.init(rows: rows, cols: cols)
        for i in 0 ..< rows {
            assert(elements[i].count == cols, "Array must have same number of elements for each row")
            self.matrix.replaceRange(cols * i ..< cols * (i+1), with: elements[i])
        }
    }
}