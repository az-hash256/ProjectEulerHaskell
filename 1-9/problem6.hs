--- Problem 6: Sum Square Difference

-- Solutio
difference :: Int
difference = (sum [1..100])^2 - (sum $ map (^2) [1..100])

main :: IO()
main = do
       let result = difference
       putStrLn $ "The difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is: " ++ show result
