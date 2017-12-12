data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

data Person = Person { firstName :: String
                    ,  lastName :: String
                    ,  age :: Int
                    } deriving (Eq, Show, Read)

-- read 和 show相互转换， Eq与Ord可以比较, Bounded有边界值, Enum instance 可以得到前一天和后一天
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Sturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)

-- 类型构造器只有一个，值构造器由三个
data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)
 