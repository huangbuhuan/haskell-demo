describeList :: [a] -> String
describeList xs = "The list is" ++ case xs of [] -> "empty"
                                              [x] -> "single list"
                                              xs -> "longer list"