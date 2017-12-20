import Data.Char

-- 使用./capslocker < 文件名转换成大写打印到控制台
main = do
    contents <- getContents
    putStr (shortLiensOnly contents)

shortLiensOnly :: String -> String
shortLiensOnly = unlines . filter (\line -> length  line < 10) . lines