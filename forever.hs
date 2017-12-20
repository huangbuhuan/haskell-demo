import Control.Monad
import Data.Char

main = forever $ do
    putStr "give me some input !"
    l <- getLine
    putStrLn $ map toUpper l