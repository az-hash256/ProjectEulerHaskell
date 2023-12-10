--- Problem 10: Summation of Primes
import Data.List

-- Check if Prime
isPrime :: Int -> Bool
isPrime n = all (\p -> n `mod` p /= 0) (takeWhile (\p -> p*p <= n) primes)

-- List of Primes
primes :: [Int]
primes = 2 : filter isPrime [3,5..]

-- Find the sum of n primes
sumNPrimes :: Int -> Int
sumNPrimes n = sum $ takeWhile (< n) primes

main :: IO ()
main = do
       let result = sumNPrimes 2000000
       putStrLn $ "The sum all primes below 2 million is: " ++ show result 
