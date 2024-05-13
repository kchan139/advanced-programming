twice :: (a -> a) -> a -> a
twice f x = f (f x)

mysum xs = foldl (+) 0 xs
myproduct xs = foldl (*) 1 xs

mylength xs = foldr (\_ n -> n + 1) 0 xs