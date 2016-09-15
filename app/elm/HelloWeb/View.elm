module HelloWeb.View exposing (root)

import Html exposing (Html, text, section, div, h1, img, code, pre)
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
                [ text "Hello Web???" ]
            , pre [ class "ruby", style [ ( "text-align", "left" ) ] ]
                [ text codeExample ]
            ]
        ]


codeExample : String
codeExample =
    """
# A very basic HTTP server
require "http/server"

server = HTTP::Server.new(8080) do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello world, got #{context.request.path}!"
end

puts "Listening on http://0.0.0.0:8080"
server.listen
"""
