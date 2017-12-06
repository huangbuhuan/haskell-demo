


myfst :: (a, b) -> a
myfst (a, b) = a

data MyTree a = Leaf a
            | Node a (MyTree a) (MyTree a)
            deriving (Show)

leftMost :: MyTree a -> a
leftMost (Leaf x) = x
-- 遍历得到最左节点
leftMost (Node _ l r) = leftMost l  

-- 将一个节点做一个运算变成另一个节点
myMap :: (a -> b) -> MyTree a -> MyTree b
myMap f (Leaf x) = Leaf (f x)
myMap f (Node x l r) = Node (f x) (myMap f l) (myMap f r)

data Option a = None
            | Some a
            deriving (Show)
myFc :: (a -> b) -> Option a ->Option b            
myFc f None = None
myFc f (Some x) = Some (f x)


-- findUser :: Email -> Maybe User
class MyFuntor f where
    fmap :: (a -> b) -> f a -> f b

    
instance MyFuntor Option where
    fmap = myFc

instance MyFuntor MyTree where
    fmap = myMap


