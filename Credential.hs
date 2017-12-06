data Credential = Mobile String
                | Email String
                | UserName String
                deriving (Show)
validate :: Credential -> Bool
validate (Mobile num) = (length num) == 11
validate (Email address) = elem '@' address
validate (UserName name) = 
    let 
        nameLength = length name
    in 
        nameLength > 5 && nameLength <= 10

first :: (a, b) -> a
first (i, _) = i

seconde :: (a, b) -> b
seconde (_, s) = s