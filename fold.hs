{- foldl函数(左折叠) 它从List的左端开始折叠，用初始值和List的头部调用这二元函数
，得一新的累加值，并用新的累加值与List的下一个元素调用二元函数-}
sum' :: (Num a) => [a] -> a
-- sum' xs = foldl (\acc x -> acc + x) 0 xs 函数、初始值、列表 reduce操作
sum' = foldl (+) 0

elem' :: (Eq a) => a -> [a] -> Bool
elem' y = foldl (\acc x -> if x == y then True else acc) False

-- foldr右折叠
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs


oddSquareSum :: Integer
oddSquareSum = sum . takeWhile (< 10000) . filter odd . map (^2) $ [1..]