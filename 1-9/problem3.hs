--- Problem 3: Largest Prime Factor

-- Find the list of Prime Factors
factors :: Int -> Int -> [Int] -> [Int]
factors n i lst = 
  case n `mod` 2 of
   0 -> factors (n `div` 2) i (2 : lst)
   1 ->  case i^2 <= n of
            True  -> if (n `mod` i) == 0 then factors (n `div` i) i (i : lst) else factors n (i + 2) lst
            False -> if n > 2 then (n : lst) else lst

-- Find maximum number in list of prime factors of n
largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum (factors n 3 [])

main :: IO ()
main = do
       let result = largestPrimeFactor 600851475143
       putStrLn $ "The largest prime factor of the number 600851475143: " ++ show result
