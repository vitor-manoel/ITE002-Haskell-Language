module Teste where

    data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo

    agenda :: Dia -> String
    agenda Domingo = "Ficar em casa"
    agenda Sabado = "Passeio com filho"
    agenda _ = "Trabalho"
