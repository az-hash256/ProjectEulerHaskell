--- Problem 9: Special Pythagorean Triplet

-- Generators
genA m n = 2*m*n
genB m n = m^2 - n^2
genC m n = m^2 + n^2

-- Solution
triplet k = head [genA m n  * genB m n * genC m n | m <- [1..k], n <-[1..k], genA m n  + genB m n + genC m n == k && genA m n > 0 && genB m n > 0 && genC m n > 0]
