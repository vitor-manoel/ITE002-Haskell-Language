module Teste where

    foo :: Char -> Int -> (Int, String)
    foo x y = (y + 9, x:[x])
    