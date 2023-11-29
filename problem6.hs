--- Problem 6: Sum Square Difference

-- Solution
difference = (sum [1..100])^2 - (sum $ map (^2) [1..100])
