module JustASec.View exposing (root)

import Html exposing (Html, text, div, h1, img)
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
            [ h1 [ class "title" ]
                [ text "Just a Second There Professor..." ]
            , img [ src "justASec.jpg", title "Office Space Image" ] []
            ]
        ]
