type Connection = String
type UrlStr = String
type User = String 
type Email = String

getConn :: UrlStr -> Maybe Connection
getConn "damotou" = Just "good connection"
getConn _ = Nothing

getUser :: Connection -> User
getUser "good connection" = "good user"

getEmail :: User -> Email
getEmail "good user" = "good email"