module Tests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Dollar exposing (..)


suite : Test
suite =
    describe "Dollar module"
        [ describe "times"
            [ test "$5 * 2 = $10" <|
                \_ ->
                    let
                        subject =
                            Dollar 5 |> Dollar.times 2 |> Dollar.amount
                    in
                        Expect.equal subject 10
            ]
        ]
