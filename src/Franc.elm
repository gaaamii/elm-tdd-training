module Franc exposing (..)


type Franc
    = Franc Int


times : Int -> Franc -> Franc
times multiplier franc =
    Franc (multiplier * (amount franc))


amount : Franc -> Int
amount franc =
    case franc of
        Franc amount ->
            amount
