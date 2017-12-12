{- data Car = Car String String Int deriving (Show)
 记录语法用于构造字段较多且不容易区分的情况 -}
data Car = Car { company :: String
               , model :: String
               , year :: Int
                } deriving (Show)