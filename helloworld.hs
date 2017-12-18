-- main = putStr "hello, world"

main = do
    putStrLn "Hello, what's your name"
    -- 从输入读取一行并将结果绑定到name中，只能使用<- 不能使用=
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")