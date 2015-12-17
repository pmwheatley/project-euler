// Largest palindrome product
//
// Problem 4
//
// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.

class Problem0004 {
    
    func solve(max: Int, min: Int = 0) -> Int {
        var largestPalindrome = 0
        
        for left in max.stride(through: min, by: -1) {
            for right in left.stride(through: min, by: -1) {
                let product: Int = left * right
                if product > largestPalindrome && product.isPalindromic() {
                    largestPalindrome = product
                }
            }
        }
        
        return largestPalindrome
    }
    
}
