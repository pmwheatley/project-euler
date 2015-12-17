//
//  Array2D.swift
//  ProjectEuler
//
//  Created by convict7421 on 16/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

struct Array2D<T : IntegerLiteralConvertible > {
    let rows : Int
    let cols : Int
    var matrix: [T]
    
    init(rows : Int, cols : Int) {
        self.rows = rows
        self.cols = cols
        matrix = Array(count : rows * cols, repeatedValue : 0)
    }
    
    subscript(row : Int, col : Int) -> T {
        get { return matrix[cols * row + col] }
        set { matrix[cols*row+col] = newValue }
    }

    func getHorizontals() -> [[T]] {
        var horizontals: [[T]] = [[T]]()
        
        for row in 0..<rows {
            var horizontal: [T] = [T]()
            for col in 0..<cols {
                horizontal.append(self[row, col])
            }
            horizontals.append(horizontal)
        }
        
        return horizontals
    }
    
    func getVerticals() -> [[T]] {
        var verticals: [[T]] = [[T]]()

        for col in 0..<cols {
            var vertical: [T] = [T]()
            for row in 0..<rows {
                vertical.append(self[row, col])
            }
            verticals.append(vertical)
        }

        return verticals
    }

    func getLeadingDiagonal() -> [T] {

        let dim = min(rows, cols)
        var diag: [T] = [T]()
        
        for i in 0..<dim {
            diag.append(self[i, i])
        }
        
        return diag
    }

    func getAllLeadingDiagonals() -> [[T]] {

        var diags: [[T]] = [[T]]()
        
        for row in rows.predecessor().stride(through: 0, by: -1) {
            var diag: [T] = [T]()
            for i in 0...(rows-row-1) {
                diag.append(self[row+i, i])
            }
            diags.append(diag)
        }
        
        for col in 1..<cols {
            var diag: [T] = [T]()
            for i in 1...(cols-col) {
                diag.append(self[i-1, col-1+i])
            }
            diags.append(diag)
        }
        
        return diags
    }
    
    func getTrailingDiagonal() -> [T] {
        
        let dim = min(rows, cols)
        let base = dim.predecessor()

        var diag: [T] = [T]()
        
        for i in 0..<dim {
            diag.append(self[i, base - i])
        }
        
        return diag
    }

    func getAllTrailingDiagonals() -> [[T]] {
        
        var diags: [[T]] = [[T]]()
        
        for col in 0..<cols {
            var diag: [T] = [T]()
            for i in col.stride(through: 0, by: -1) {
                diag.append(self[col-i, i])
            }
            diags.append(diag)
        }
        
        for row in 1..<rows {
            var diag: [T] = [T]()
            for i in (rows-1).stride(through: row, by: -1) {
                diag.append(self[row+(rows-i)-1, i])
            }
            diags.append(diag)
        }
        
        return diags
    }
    
}