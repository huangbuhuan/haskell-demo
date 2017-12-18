class Functors f where
    fmap' :: (a -> b) -> f a -> f b

instance Functors [] where
    fmap' = map
    
instance Functors Maybe where
    fmap' f (Just x) = Just (f x)
    fmap' f Nothing = Nothing