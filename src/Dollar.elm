module Dollar exposing (..)


type Dollar
    = Dollar Int


times : Int -> Dollar -> Dollar
times multiplier dollar =
    Dollar (multiplier * (amount dollar))


amount : Dollar -> Int
amount dollar =
    case dollar of
        Dollar amount ->
            amount
