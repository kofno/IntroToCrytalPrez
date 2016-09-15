module View exposing (root)

import Types exposing (..)
import Html exposing (Html, text, section, div, h1, img, nav, a)
import Html.Attributes exposing (class, id, src, title, href)
import Html.Events exposing (onClick)
import Cover.View
import HelloWorld.View
import HelloWeb.View
import RailsEh.View
import JustASec.View
import CrystalExample.View
import UnionTypes.View
import Overloaded.View
import CBinding.View
import Macros.View
import Concurrency.View
import ConcurrencyExample.View
import Awesome.View
import Parallelism.View


root : Model -> Html Msg
root model =
    section [ class "hero is-fullheight", id "intro" ]
        [ renderSlide model
        , heroFoot model
        ]


renderSlide : Model -> Html Msg
renderSlide model =
    case model.slide of
        Cover ->
            Cover.View.root model

        HelloWorld ->
            HelloWorld.View.root model

        HelloWeb ->
            HelloWeb.View.root model

        RailsEh ->
            RailsEh.View.root model

        JustASec ->
            JustASec.View.root model

        CrystalExample ->
            CrystalExample.View.root model

        UnionTypes ->
            UnionTypes.View.root model

        Overloaded ->
            Overloaded.View.root model

        CBinding ->
            CBinding.View.root model

        Macros ->
            Macros.View.root model

        Concurrency ->
            Concurrency.View.root model

        ConcurrencyExample ->
            ConcurrencyExample.View.root model

        Awesome ->
            Awesome.View.root model

        Parallelism ->
            Parallelism.View.root model

        JustASec2 ->
            JustASec.View.root model


heroFoot : Model -> Html Msg
heroFoot model =
    div [ class "hero-foot" ] [ footNav model ]


footNav : Model -> Html Msg
footNav model =
    div [ class "container" ]
        [ nav [ class "nav" ]
            [ div [ class "nav-left" ] [ previousSlide model ]
            , div [ class "nav-right" ] [ nextSlide model ]
            ]
        ]


nextSlide : Model -> Html Msg
nextSlide model =
    case Types.nextSlide model.slide of
        Nothing ->
            text ""

        Just slide ->
            a [ onClick (Goto slide) ] [ text "Next" ]


previousSlide : Model -> Html Msg
previousSlide model =
    case Types.previousSlide model.slide of
        Nothing ->
            text ""

        Just slide ->
            a [ onClick (Goto slide) ] [ text "Previous" ]
