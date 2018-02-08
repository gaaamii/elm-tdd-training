module Tests exposing (..)

import Money exposing (..)
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "Money module"
        [ describe "Dollar"
            [ test "$5 * 2 = $10" <|
                \_ ->
                    let
                        subject =
                            Dollar 5 |> times 2
                    in
                        Expect.equal subject (Dollar 10)
            ]
        , describe "Franc"
            [ test "5 Franc * 2 = 10 Franc" <|
                \_ ->
                    let
                        subject =
                            Franc 5 |> times 2
                    in
                        Expect.equal subject (Franc 10)
            ]
        ]
