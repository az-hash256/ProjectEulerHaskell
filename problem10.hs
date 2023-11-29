--- Problem 10: Summation of Primes
import Data.List

-- Check if Prime
isPrime :: Integral t => [t] -> t -> Bool
isPrime (p:ps) x = p*p > x || x `rem` p /= 0 && isPrime ps x

-- List of Primes
primes :: [Int]
primes = 2 : filter (isPrime primes) [3,5 ..]

-- Solution
sumNPrimes :: Int -> Int
sumNPrimes n = sum $ takeWhile (< n) primes
