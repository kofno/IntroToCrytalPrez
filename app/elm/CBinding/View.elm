module CBinding.View exposing (root)

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
            [ h1 [ class "title" ] [ text "C Bindings" ]
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
@[Link("libclamav")]
lib LibClamAV
  fun cl_init(options : UInt32) : Int32
  fun cl_engine_new : Pointer(Engine)
  fun cl_engine_free(engine : Pointer(Engine)) : Int32
  fun cl_retdbdir : UInt8*  # C String
  fun cl_load(
    path : UInt8*, engine : Engine*, signo : Int32*, options : UInt32
  ) : Int32
  fun cl_engine_compile(engine : Engine*) : Int32
end
"""
