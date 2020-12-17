module View.Artists.Artists exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Model exposing (Model)
import Msg.Msg exposing (Msg)
import View.Artists.Lucas
import View.Artists.Marv
import View.Navbar


view : Model -> Html Msg
view model =
    Html.div
        []
        [ View.Navbar.view model.navbar
        , body
        ]


body : Html Msg
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
