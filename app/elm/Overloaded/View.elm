module Overloaded.View exposing (root)

import Types exposing (..)
import Html exposing (Html, div, h1, text, pre)
import Html.Attributes exposing (class, style)
import TransitStyle


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ h1 [ class "title" ] [ text "Method Overloading" ]
            , pre
                [ style [ ( "text-align", "left" ) ]
                ]
                [ text exampleCode
                ]
            ]
        ]


exampleCode : String
exampleCode =
    """
def addOne(value : Int32)
  value + 1
end

def addOne(value : Nil)
  nil
end

addOne(a)                  # 5 : Int32
addOne(nil)                # nil : Nil
"""
