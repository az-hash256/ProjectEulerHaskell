--- Problem 4: Largest Palindrome Product

-- Detects if Number is a Palindrome
isPalindrome n = ((show n) == (reverse (show n)))

-- Lists all Palindromes that are the product of two 3-digit numbers
palindromeList = [(x * y, x, y) | x <- [100..999], y<-[100..999], isPalindrome(x*y)]
        
-- Solution
largestPalindrome = maximum palindromeList
