module CrystalExample.View exposing (root)

import Types exposing (..)
import Html exposing (Html, div, pre, text)
import Html.Attributes exposing (class, style)
import TransitStyle


root : Model -> Html Msg
root model =
    div
        [ class "hero-body has-text-centered"
        , style <| (TransitStyle.fadeSlide 200 model.transition)
        ]
        [ div [ class "container" ]
            [ pre
                [ style [ ( "text-align", "left" ) ]
                ]
                [ text exampleCode
                ]
            ]
        ]


exampleCode : String
exampleCode =
    """
module Scry
  class Analyzer
    private getter workspace : Workspace
    private getter text_document : TextDocument

    def initialize(@workspace, @text_document)
    end

    def run
      text.map { |t| analyze(t) }.flatten.uniq
    end

    # ... and so on
  end
end
"""
