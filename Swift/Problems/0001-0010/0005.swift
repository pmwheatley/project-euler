// Problem 5
//
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//    
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Problem0005 {
    
    func solve(range: Range<Int>) -> Int {
        return [Int](range).leastCommonMultiple()
    }
    
}

