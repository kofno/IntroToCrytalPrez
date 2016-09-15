module Main exposing (main)

import View
import Types exposing (..)
import Html.App
import State


main : Program Never
main =
    Html.App.program
        { init = Types.init
        , update = State.update
        , view = View.root
        , subscriptions = State.subscriptions
        }
