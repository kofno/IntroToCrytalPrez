module Awesome.View exposing (root)

import Types exposing (..)
import Html exposing (Html, div, a, text)
import Html.Attributes exposing (class, style, href)
import TransitStyle


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ a
                [ href "http://awesome-crystal.com/"
                , style [ ( "font-size", "24px" ) ]
                ]
                [ text "Awesome Crystal" ]
            ]
        ]
