multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
{- compare :: Ord a => a -> a -> Ordering
   compare 100 返回函数 fc :: (Ord a, Num a) => a -> Ordering           
-}
compareWithHundred = compare 100

-- 中缀函数使用不完全调用
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

-- 检查是否小写 x `elem` ['A'..'Z']
isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])

-- 调用联两let次f, 第一个参数为函数，第二个参数是个a  `(a -> a -> a)`
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _  = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

addAll :: (a -> a) -> [a] -> [a]
addAll _ [] = []
addAll f (x:xs) = f x : addAll f xs

-- 使用flip左右互换并输出
flip' :: (a -> b -> c) -> b -> a-> c
flip' f y x = f x y

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
    where p x = x `mod` 3829 == 0


chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n 
    | even n = n : chain (n `div` 2)
    | odd n = n : chain (n*3 + 1)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15
