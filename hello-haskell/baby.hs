
{- FIRST FUNCTIONS -}

-- function to double small numbers
doubleSmallNumber x = if x > 100
                        then x
                        else x*2


conanO'Brien = "It's a-me, Conan O'Brien!"

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

getNthElement n list = list !! n
-- function to get value of given index from given list


{- LISTS -}

isInList value list = value `elem` list
-- see if a value is in a list

twoSum target list = [(x, y) | x <- list, y <- list, x + y == target]
-- "Return indices of x, y such that x is from list and y is from list and x + y == target"

twoSumIndices target list = [(x, y) | x <- [0..length list - 1], y <- [0..length list - 1], list !! x + list !! y == target]

texasRange start end = [start..end]
texasRangeWithStep start end step = [start, start + step..end]
-- generally, avoid these in list ranges as they can be slow

-- List Comprehension
-- [x*2 | x <- [1..10]] -- double x for x in [1..10]
-- [x*2 | x <- [1..10], x*2 >= 12] -- double x for x in [1..10] if x*2 >= 12
-- [x | x <- [50..100], x `mod` 7 == 3] -- x for x in [50..100] if x `mod` 7 == 3
-- [x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- x for x in [10..20] if x is not 13, 15, 19
-- [x | x <- [1..10], x `mod` 2 == 0] -- [2,4,6,8,10] -- even numbers from 1 to 10

-- infinite list
-- take 10 (cycle [1,2,3]) -- [1,2,3,1,2,3,1,2,3,1]
-- take 10 (repeat 5) -- [5,5,5,5,5,5,5,5,5,5]

-- compare two lists lexicographically
-- [1,2,3] < [1,2,4] -- True, because 3 < 4
-- [1,2,3] < [1,2,3,4] -- True, because 3 < 4
-- [1,2,3] < [1,2,3] -- False, because they are equal
-- [1,2,3] < [1,2,3,0] -- True, because 3 < 0

isRightTriangle a b c = a^2 + b^2 == c^2
hasPerimeter24 = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a + b + c == 24, isRightTriangle a b c] -- [(6,8,10)], the only right triangle with perimeter 24


