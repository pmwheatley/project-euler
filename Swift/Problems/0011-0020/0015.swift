// Lattice paths
//
// Problem 15
//
// Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
//
// https://projecteuler.net/project/images/p015.gif
//
// How many such routes are there through a 20×20 grid?

import Foundation

class Problem0015 {
    
    func solve(n: Double) -> Double {
        return getNthBinomialCoefficient(n)
    }
    
}