read' :: (Integral a) => a -> a
read' 0 = 1
read' n = n * read'(n - 1)

-- 带类型约束
sum' :: (Integral a) => (a, a) -> a
sum' (x, y) = x + y

-- 元组
add' :: (Int, Int) -> Int
add' (x, y) = x + y

-- 两个参数
add'' :: Int -> Int -> Int
add'' x y = x + y

-- 三个参数
add''' :: Int -> Int -> Int -> Int
add''' x y z = x + y + z

-- 返回一个int -> int函数 可以使用 let add1 = add'''' 1 返回的函数可以接受第二个参数并返回一个Int结果
add'''' :: Int -> (Int -> Int)
add'''' x y = x + y

-- lambda函数写法
add''''' :: Int -> (Int -> Int)
add''''' = \x y -> x + y

-- 
add'''''' :: Int -> (Int -> Int)
add'''''' x = \y -> x + y

{- 
  编译器自动类型推断 如果x，y都用let x = 1 :: Int, let y = 0.1 :: Float相加就会失败，编译器无法进行类型推断需要手动转换
  fromInteral y
-}
add''''''' :: Num a => a -> a -> a
add''''''' x y = x + y

{- append' :: (Num a) => a -> b -> b
append' x y = (show x) ++ y -}