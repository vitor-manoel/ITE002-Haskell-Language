module Ex1 where
    {-1) Gere as listas:
    a) [1,11,121,1331,14641,161051,1771561]-}
    ex1A :: [Int]
    ex1A = [ 11 ^ x | x <- [0 .. 6]]

    {-b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]-}
    ex1B :: [Int]
    ex1B = [ x | x <- [1..39], mod x 4 /= 0]

    {-c) ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB","AgBB"]-}
    ex1C :: [String]
    ex1C = [x ++ "BB" | x <- ["Aa","Ab","Ac","Ad","Ae","Af","Ag"]]

    {-d) [5,8,11,17,20,26,29,32,38,41]-}

    {-e) [1.0,0.5,0.25,0.125,0.0625,0.03125]-}
    
    {-f) [1,10,19,28,37,46,55,64]-}

    {-g) [2,4,8,10,12,16,18,22,24,28,30]-}

    {-h) ['@','A','C','D','E','G','J','L']-}

    {-2) Crie uma função que verifique se o tamanho de uma String é par ou não. 
    Use Bool como retorno.-}
    ex2 :: String -> Bool
    ex2 x = (mod (length(x)) 2) == 0

    {-3) Escreva uma função que receba um vetor de Strings e retorne uma lista com 
    todos os elementos em ordem reversa.-}
    ex3 :: [String] -> [String]
    ex3 x = reverse x

    {-4) Escreva uma função que receba um vetor de Strings e
    retorne uma lista com o tamanho de cada String. As palavras de
    tamanho par devem ser excluídas da resposta.-}
    ex4 :: [String] -> [Int]
    ex4 x = [length(x) | x <- x, (mod (length(x)) 2) /= 0]

    {-5 ) Escreva a função head como composição de duas outras.-}
    ex5 :: String -> Char
    ex5 x = last (reverse x)

    {-6 ) Faça uma função que receba uma String e retorne True
    se esta for um palíndromo; caso contrário, False .-}
    ex6 :: String -> Bool
    ex6 x = (x == (reverse x))

    {-7 ) Faça uma função que receba um inteiro e retorne uma
    tupla, contendo: o dobro deste número na primeira coordenada, o
    triplo na segunda, o quádruplo na terceira e o quíntuplo na quarta.-}
    ex7 :: Int -> (Int, Int, Int, Int)
    ex7 x = (x * 2, x * 3, x * 4, x * 5)