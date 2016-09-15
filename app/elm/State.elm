module State exposing (update, subscriptions)

import Transit
import Types exposing (..)


subscriptions : Model -> Sub Msg
subscriptions model =
    Transit.subscriptions TransitMsg model


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Goto slide ->
            Transit.start TransitMsg (SetSlide slide) ( 500, 500 ) model

        TransitMsg a ->
            Transit.tick Types.TransitMsg a model

        SetSlide slide ->
            { model | slide = slide } ! []
