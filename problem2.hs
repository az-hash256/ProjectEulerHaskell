--- Problem 2: Even Fibonacci Numbers

-- Fibonacci sequence Defined
luc a b = a : luc b (a + b)
fibonnaciSeq n = take n (luc 0 1)

-- Solution
evenFib n = sum [x | x <- fibonnaciSeq n, even x] 
