// Longest Collatz sequence
//
// Problem 14
//
// The following iterative sequence is defined for the set of positive integers:
//
// n → n/2 (n is even)
// n → 3n + 1 (n is odd)
//
// Using the rule above and starting with 13, we generate the following sequence:
//
// 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
//
// It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
//
// Which starting number, under one million, produces the longest chain?
//
// NOTE: Once the chain starts the terms are allowed to go above one million.

import Foundation

class Problem0014 {
    
    func naiveSolve(limit: Int) -> (Int, Int) {
        
        var highestCount = 0
        var highestRoot = 1
        
        for i in 1..<limit {
            let seq = Collatz.init(root: i)
            var count = 0
            for _ in seq {
                ++count
            }
            if count > highestCount {
                highestCount = count
                highestRoot = i
            }
        }
        
        return (highestRoot, highestCount)
    }

    func smartSolve(limit: Int) -> (Int, Int) {
        return getLongestCollatzSequence(limit)
    }
    
}