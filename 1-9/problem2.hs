--- Problem 2: Even Fibonacci Numbers

-- Fibonacci sequence
fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

evenFibs :: [Int]
evenFibs = filter (even) $ takeWhile (< 4000000) fibs

main :: IO ()
main = do
       let result = sum evenFibs
       putStrLn $ "The sum of the even-valued terms in the Fibonacci sequence whose values do not exceed four million is: " ++ show result
