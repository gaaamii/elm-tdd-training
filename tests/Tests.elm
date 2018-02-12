module Tests exposing (..)

import Expect exposing (Expectation)
import Money exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "Money module"
        [ describe "Dollar Manipulation"
            [ test "$5 * 2 = $10" <|
                \_ ->
                    let
                        subject =
                            dollar 5 |> times 2
                    in
                    Expect.equal subject (dollar 10)
            , test "$5 * 3 = $15" <|
                \_ ->
                    let
                        subject =
                            dollar 5 |> times 3
                    in
                    Expect.equal subject (dollar 15)
            ]
        , describe "Franc Manipulation"
            [ test "5 Franc * 2 = 10 Franc" <|
                \_ ->
                    let
                        subject =
                            franc 5 |> times 2
                    in
                    Expect.equal subject (franc 10)
            , test "5 Franc * 3 = 15 Franc" <|
                \_ ->
                    let
                        subject =
                            franc 5 |> times 3
                    in
                    Expect.equal subject (franc 15)
            ]
        , describe "Equality"
            [ test "Dollar 5 is not equal to Franc 5" <|
                \_ ->
                    let
                        subject =
                            dollar 5
                    in
                    Expect.notEqual subject (franc 5)
            ]
        ]
