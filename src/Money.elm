module Money exposing (..)


type Money
    = Dollar Int
    | Franc Int


amount : Money -> Int
amount money =
    case money of
        Dollar amount ->
            amount

        Franc amount ->
            amount


times : Int -> Money -> Money
times multiplier money =
    case money of
        Dollar amount ->
            Dollar (multiplier * amount)

        Franc amount ->
            Franc (multiplier * amount)


dollar : Int -> Money
dollar amount =
    Dollar amount


franc : Int -> Money
franc amount =
    Franc amount
