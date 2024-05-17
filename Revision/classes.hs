type Pos = (Int, Int)
origin :: Pos
origin = (0, 0)

left :: Pos -> Pos
left (x, y) = (x - 1, y)

type Pair a = (a, a)
mult :: Pair Int -> Int
mult (m, n) = m * n

copy :: a -> Pair a
copy x = (x, x)

data Answer = Yes | No | Unsure
answer :: [Answer]
answer = [Yes, No, Unsure]

flip :: Answer -> Answer
flip Yes    = No
flip No     = Yes
flip Unsure = Unsure

data Shape = Circle Float
           | Rect Float Float
square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
area (Circle r) = 2 * pi * r
area (Rect x y) = x * y

-- data Maybe a = Nothing | Just a
safediv :: Int -> Int -> Maybe Int
safediv _ 0 = Nothing
safediv x y = Just (x `div` y)

safehead :: [a] -> Maybe a
safehead [] = Nothing
safehead xs = Just (head xs)

data Expr = Val Int
          | Add Expr Expr
          | Mul Expr Expr

size :: Expr -> Int
size (Val _) = 1
size (Add x y) = size x + size y
size (Mul x y) = size x + size y