module ConstructorFields where

    data Pessoa = Fisica String Int | Juridica String deriving Show

    teste :: Pessoa -> (String,String)
    teste (Fisica x y) = ("Nome : " ++ x, "Idade : " ++ show y)
    teste (Juridica x) = ("Nome : " ++ x, "Não há idade.")

    newtype Dado = Dado Int
    data Dado1 = Dado1 Int