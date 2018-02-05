module Tests exposing (..)

import Dollar exposing (..)
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "Dollar module"
        [ describe "times（ドルをユニオン型で表現するパターン）"
            [ test "$5 * 2 = $10" <|
                \_ ->
                    let
                        subject =
                            Dollar 5 |> Dollar.times 2 |> Dollar.amount
                    in
                    Expect.equal subject 10
            ]
        , describe "rtimes (ドルをレコードで表現するパターン）"
            [ test "$5 * 2 = $10" <|
                \_ ->
                    let
                        subject =
                            Dollar.rtimes 2 { amount = 5 }
                    in
                    Expect.equal subject { amount = 10 }
            ]
        , describe "times 2 してから times 3 するやつ"
            [ test "$5 * 3 = 15" <|
                \_ ->
                    let
                        times_3 =
                            let
                                times_2 =
                                    Dollar 5 |> Dollar.times 2 |> Dollar.amount
                            in
                            Dollar 5 |> Dollar.times 3 |> Dollar.amount
                    in
                    Expect.equal times_3 15
            ]
        , describe "elmにおいてequalsメソッドなどいらないことを確認"
            [ test "$5 = $5" <|
                \_ ->
                    let
                        subject =
                            Dollar 5
                    in
                    Expect.equal subject (Dollar 5)
            ]
        ]
