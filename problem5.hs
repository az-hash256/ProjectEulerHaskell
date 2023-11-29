--- Problem 5: Smallest Multiple

-- Check if number is prime
isPrime k = if k > 1 then null [ x | x <- [2..k - 1], k `mod` x == 0] else False

-- List of Primes
primes = filter isPrime [2..]

-- List of largest prime powers that are at most n 
largestPrimePowers n = (\p -> (p^) $ floor $ logBase (fromIntegral p) (fromIntegral n)) `map` primesBelow where
    primesBelow = takeWhile (<=n) primes

-- Solution
smallestDivNum n = foldl (*) 1 (largestPrimePowers n)
