module Ex2 where

    {-1) Crie o tipo Pergunta com os values constructors Sim ou Nao . 
    Faça as funções seguintes, determinando seus tipos explicitamente.-}

    data Pergunta = Sim | Nao deriving Show

    {-pergNum : recebe via parâmetro uma Pergunta. Retorna 0 para não e 1 para sim-}

    pergNum :: Pergunta -> Int
    pergNum (Sim) =  1
    pergNum (Nao) = 0

    {-listPergs : recebe via parâmetro uma lista de Perguntas , e retorna 0 s e 1 s 
    correspondentes aos constructores contidos na lista.-}

    listPergs :: [Pergunta] -> [Int]
    listPergs x = [pergNum(x) | x <- x]

    {-and' : recebe duas Perguntas como parâmetro e retorna a tabela verdade do and lógico, 
    usando Sim como verdadeiro e Nao como falso.-}

    eAnd :: Pergunta -> Pergunta -> Pergunta
    eAnd x y = (if (pergNum(x) * pergNum(y)) == 1 then Sim else Nao)

    {-or' : idem ao anterior, porém deve ser usado o ou lógico.-}

    eOr :: Pergunta -> Pergunta -> Pergunta
    eOr x y = (if (pergNum(x) + pergNum(y)) >= 1 then Sim else Nao)

    {-not' : idem ao anterior, porém deve ser usado o not lógico.-}

    eNot :: Pergunta -> Pergunta -> Pergunta
    eNot x y = (if pergNum(x) == 0 then Sim else Nao)

    {-2) Faça o tipo Temperatura que pode ter valores Celsius , Farenheit ou Kelvin. 
    Implemente as funções:-}

    data Temperatura = Celsius | Farenheit | Kelvin deriving Show

    {-converterCelsius : recebe um valor double e uma temperatura, e faz a conversão para Celsius-}
    
    converterCelsius :: (Double, Temperatura) -> String
    converterCelsius (x, Celsius) = ("Temperatura em Celsius : " ++ show x)
    converterCelsius (x, Farenheit) = ("Temperatura em Celsius : " ++ show ((x - 32) / 1.8))
    converterCelsius (x, Kelvin) = ("Temperatura em Celsius : " ++ show (x - 273))

    {-converterFarenheit : recebe um valor double e uma temperatura, e faz a conversão para Farenheit-}
    
    converterFarenheit :: (Double, Temperatura) -> String
    converterFarenheit (x, Farenheit) = ("Temperatura em Farenheit : " ++ show x)
    converterFarenheit (x, Celsius) = ("Temperatura em Farenheit : " ++ show ((x * 1.8) + 32))
    converterFarenheit (x, Kelvin) = ("Temperatura em Farenheit : " ++ show (((x - 273) * 1.8) + 32))

    {-converterKelvin : recebe um valor double e uma temperatura, e faz a conversão para Kelvin-}
    
    converterKelvin :: (Double, Temperatura) -> String
    converterKelvin (x, Kelvin) = ("Temperatura em Kelvin : " ++ show x)
    converterKelvin (x, Celsius) = ("Temperatura em Kelvin : " ++ show (x + 273))
    converterKelvin (x, Farenheit) = ("Temperatura em Kelvin : " ++ show (((x - 32) / 1.8) + 273))

    {-3) Implemente uma função que simule o vencedor de uma partida de pedra, papel e tesoura 
    usando tipos criados. Casos de empate devem ser considerados em seu tipo.-}

    data Partida = Pedra | Papel | Tesoura deriving Show

    