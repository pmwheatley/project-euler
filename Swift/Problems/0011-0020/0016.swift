// Power digit sum
//
// Problem 16
//
// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
//
// What is the sum of the digits of the number 2^1000?

import Foundation

class Problem0016 {
    
    func solve(n: Int, pow: Int) -> Int {

        let powerSumString = String(n).raiseNumericToPower(pow)
        let powerSum:[Int] = powerSumString.characters.map() { Int(String($0)) ?? 0 }
        
        let result = powerSum.reduce(0) { $0 + $1 }
        
        return result
    }
    
}