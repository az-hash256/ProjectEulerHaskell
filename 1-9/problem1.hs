--- Problem 1: Multiples of 3 or 5

-- Construct list of multiples of 3 or 5, then sum it.
mul3or5 :: Int -> Int
mul3or5 n = sum [x | x <- [1..(n - 1)], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = do
       let result = mul3or5 1000
       putStrLn $ "The sum of multiples of 3 or 5 below 1000 is: " ++ show result
