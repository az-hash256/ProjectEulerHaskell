--- Problem 1: Multiples of 3 or 5

-- Solution
mul3or5 n = sum [x | x <- [1..(n - 1)], x `mod` 3 == 0 || x `mod` 5 == 0]
