// Summation of primes
//
// Problem 10
//
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
// Find the sum of all the primes below two million.

class Problem0010 {
    
    func solve(input:Int) -> Int {
        var sum = 0
        for i in 1..<input {
            if i.isPrime() {
                sum += i
            }
        }
        return sum
    }
    
}