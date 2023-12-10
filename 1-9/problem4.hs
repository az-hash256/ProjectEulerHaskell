--- Problem 4: Largest Palindrome Product

-- Detects if Number is a Palindrome
isPalindrome :: Int -> Bool
isPalindrome n = ((show n) == (reverse (show n)))

-- Lists all Palindromes that are the product of two 3-digit numbers
palindromeList :: [(Int, Int, Int)]
palindromeList = [(x * y, x, y) | x <- [100..999], y<-[100..999], isPalindrome(x*y)]
        
main :: IO ()
main = do
       let result = maximum palindromeList
       putStrLn $ "The largest palindrome made from the product of two 3-digit numbers is: " ++ show result
