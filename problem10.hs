--- Problem 10: Summation of Primes
import Data.List

-- Check if Prime
isPrime :: Int -> Bool
isPrime n = all (\p -> n `mod` p /= 0) (takeWhile (\p -> p*p <= n) primes)

-- List of Primes
primes :: [Int]
primes = 2 : filter isPrime [3,5..]

-- Solution
sumNPrimes :: Int -> Int
sumNPrimes n = sum $ takeWhile (< n) primes
