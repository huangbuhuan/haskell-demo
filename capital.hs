capital :: String -> String
capital "" = "Empty string"
capital all@(x:xs) = "the first " ++ all ++ " is " ++ [x]