module Cover.View exposing (root)

import Html exposing (Html, text, section, div, h1, img)
import Html.Attributes exposing (class, id, style, src, title)
import TransitStyle
import Types exposing (..)


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ img
                [ src "crystal-logo.png"
                , title "Crystal: The Programming Language"
                ]
                []
            , h1 [ class "title" ]
                [ text "Crystal" ]
            , div [ class "subtitle" ]
                [ text "A Ruby-like Language with Types" ]
            ]
        ]
