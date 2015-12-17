// Multiples of 3 and 5
//
// Problem 1
//
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.

class Problem0001 {
    
    func solve(range: Range<Int>, factors: [Int]) -> Int {

        let range = range.map { $0 }

        let multiples = range.filter {
            (value: Int) -> Bool in
            return value.isMultipleOfAll(factors)
        }

        return multiples.sum()

    }

}
