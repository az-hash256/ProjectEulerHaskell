--- Problem 5: Smallest Multiple

-- Check if number is prime
isPrime :: Int -> Bool
isPrime k = if k > 1 then null [ x | x <- [2..k - 1], k `mod` x == 0] else False

-- List of Primes
primes :: [Int]
primes = filter isPrime [2..]

-- List of largest prime powers that are at most n 
largestPrimePowers :: Int -> [Int]
largestPrimePowers n = (\p -> (p^) $ floor $ logBase (fromIntegral p) (fromIntegral n)) `map` primesBelow where
    primesBelow = takeWhile (<=n) primes

-- Solution
smallestDivNum :: Int -> Int
smallestDivNum n = foldl (*) 1 (largestPrimePowers n)

main :: IO ()
main = do
       let result = smallestDivNum 20
       putStrLn $ "The smallest positive number that is evenly divisible by all numbers from 1 to 20 is: " ++ show result
