myabs :: Int -> Int
myabs n = if n >= 0 then n else -n

mysignum :: Int -> Int
mysignum n =    if n < 0 then -1 else
                    if n == 0 then 0 else 1

mysignum2 n | n < 0     = -1
            | n > 0     = 1
            | otherwise = 0

(&&&) :: Bool -> Bool -> Bool
True  &&& x = x
False &&& _ = False

(|||) :: Bool -> Bool -> Bool
True  ||| _ = True
False ||| x = x