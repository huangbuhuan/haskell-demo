import Control.Monad

main = do
    input <- getLine
    when (input == "SWORDFISH") $ do
        putStr input