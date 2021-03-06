module Parallelism.View exposing (root)

import Types exposing (..)
import Html exposing (Html, div, h1, text)
import Html.Attributes exposing (class, style)
import TransitStyle


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ h1 [ class "title" ]
                [ text "Parallelism!!??" ]
            ]
        ]
