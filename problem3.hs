x =  600851475143

factors n i lst = 
  case n `mod` 2 of
   0 -> factors (n `div` 2) i (2 : lst)
   1 ->  case i^2 <= n of
            True  -> if (n `mod` i) == 0 then factors (n `div` i) i (i : lst) else factors n (i + 2) lst
            False -> if n > 2 then (n : lst) else lst


listPrimeFactors n = factors n 3 []

largestPrimeFactor n = maximum (factors n 3 [])
