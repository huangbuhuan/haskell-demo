
-- 使用deriving (Eq)后 可以让person用==直接进行比较, show可以使用变量名打印数据, Read可以将字符串转为对象
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Eq, Show, Read)