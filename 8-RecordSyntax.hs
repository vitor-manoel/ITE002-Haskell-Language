module RecordSyntax where

    data Ponto = Ponto {xval, yval :: Double}

    {-distOrig :: Ponto -> Double
    distOrig (Ponto x y) = sqrt(x ** 2 + y ** 2)-}

    {-distOrig :: Ponto -> Double
    distOrig (Ponto {xval=x, yval=y}) = sqrt(x**2 + y**2)-}

    distOrig :: Ponto -> Double
    distOrig p = sqrt(xval p**2 + yval p**2)