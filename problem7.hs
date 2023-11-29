--- Problem 7: 10001st Prime

-- Check if number is prime
isPrime k = if k > 1 then null [ x | x <- [2.. (floor . sqrt . fromIntegral) k], k `mod` x == 0] else False

-- List of Primes
primes = filter isPrime [2..]

-- Solution
nthPrime n = primes !! (n - 1)
