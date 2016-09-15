module ConcurrencyExample.View exposing (root)

import Types exposing (..)
import Html exposing (Html, div, pre, text)
import Html.Attributes exposing (class, style)
import TransitStyle


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ pre
                [ style [ ( "text-align", "left" ) ]
                ]
                [ text exampleCode
                ]
            ]
        ]


exampleCode : String
exampleCode =
    """
table = Channel(Int32).new
3.times { spawn player(table) }

table.send 0
sleep 1.second
puts table.receive
puts

def player(table)
  loop {
    ball = table.receive
    ball += 1
    sleep 100.milliseconds
    table.send(ball)
  }
end
"""
