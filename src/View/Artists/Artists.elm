module View.Artists.Artists exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Artists.Lucas
import View.Artists.Marv
import View.Navbar

view : Html Msg
view =
    Html.div
        []
        [ View.Navbar.view
        , body
        ]

body: Html Msg
body =
    Html.div
        [ class "columns is-multiline"
        ]
        [ Html.div
            [ class "column"
            ]
            [ View.Artists.Marv.view
            ]
        , Html.div
            [ class "column"
            ]
            [ View.Artists.Lucas.view
            ]
        ]