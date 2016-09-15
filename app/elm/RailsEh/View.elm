module RailsEh.View exposing (root)

import Html exposing (Html, text, div, h1)
import Html.Attributes exposing (class, id, style)
import TransitStyle
import Types exposing (..)


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ h1 [ class "title" ]
                [ text "Rails!!??" ]
            ]
        ]
