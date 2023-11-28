--- Problem 4: A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99. Find the largest palindrome made from the product of two 3-digit numbers.

--- Detects if Number is a Palindrome
isPalindrome n = ((show n) == (reverse (show n)))

--- Lists all Palindromes that are the product of two 3-digit numbers
palindromeList = [(x * y, x, y) | x <- [100..999], y<-[100..999], isPalindrome(x*y)]
        
--- Solution
largestPalindrome = maximum palindromeList
