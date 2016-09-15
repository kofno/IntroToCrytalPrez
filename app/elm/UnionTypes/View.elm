module UnionTypes.View exposing (root)

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
            [ h1 [ class "title" ] [ text "Union Types" ]
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
if 1 + 2 == 3
  a = 4          # 4 : Int32
else
  a = nil        # nil : Nil
end

typeof(a)        # (Int32 | Nil)

a + 1            # Compiler error!
"""
