module HelloWorld.View exposing (root)

import Html exposing (Html, text, section, div, h1, img, pre)
import Html.Attributes exposing (class, id, style, src, title)
import Types exposing (..)
import TransitStyle


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ h1 [ class "title" ]
                [ text "Hello????" ]
            , pre [ class "ruby" ]
                [ text "puts \"Hello, World!\"" ]
            ]
        ]
