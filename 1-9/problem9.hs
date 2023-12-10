--- Problem 9: Special Pythagorean Triplet

-- Generators
genA :: Int -> Int -> Int
genA m n = 2*m*n

genB :: Int -> Int -> Int
genB m n = m^2 - n^2

genC :: Int -> Int -> Int
genC m n = m^2 + n^2

-- Find product
triplet :: Int -> Int
triplet k = head [genA m n  * genB m n * genC m n | m <- [1..k], n <-[1..k], genA m n  + genB m n + genC m n == k && genA m n > 0 && genB m n > 0 && genC m n > 0]

main :: IO ()
main = do
       let result = triplet 1000
       putStrLn $ "The product of abc is: " ++ show result
