{- 只要以特殊字符命名函数，即可自动将它视为中缀函数。中缀值构造器必须以冒号开头 -}
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)