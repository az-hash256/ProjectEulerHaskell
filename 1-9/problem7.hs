--- Problem 7: 10001st Prime

-- Check if number is prime
isPrime :: Int -> Bool
isPrime k = if k > 1 then null [ x | x <- [2.. (floor . sqrt . fromIntegral) k], k `mod` x == 0] else False

-- List of Primes
primes :: [Int]
primes = filter isPrime [2..]

-- Get nth prime
nthPrime :: Int -> Int
nthPrime n = primes !! (n - 1)

main :: IO ()
main = do
       let result = nthPrime 10001
       putStrLn $ "The 10001th prime is: " ++ show result
