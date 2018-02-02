module Dollar exposing (..)


type Dollar
    = Dollar Int


type alias RDollar =
    { amount : Int
    }


rtimes : Int -> RDollar -> RDollar
rtimes multiplier rdollar =
    { amount = (multiplier * rdollar.amount) }


times : Int -> Dollar -> Dollar
times multiplier dollar =
    Dollar (multiplier * (amount dollar))


amount : Dollar -> Int
amount dollar =
    case dollar of
        Dollar amount ->
            amount
