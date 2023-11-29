--- Problem 3: Largest Prime Factor

-- Number we want the prime factor of
x =  600851475143

-- Find the list of Prime Factors
factors n i lst = 
  case n `mod` 2 of
   0 -> factors (n `div` 2) i (2 : lst)
   1 ->  case i^2 <= n of
            True  -> if (n `mod` i) == 0 then factors (n `div` i) i (i : lst) else factors n (i + 2) lst
            False -> if n > 2 then (n : lst) else lst

-- Solution
largestPrimeFactor n = maximum (factors n 3 [])
