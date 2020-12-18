module View.OurStory.OurStory exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Model exposing (Model)
import Msg.Msg exposing (Msg)
import View.Navbar

view : Model -> Html Msg
view model =
    Html.div
        []
        [ View.Navbar.view model.navbar
        , Html.div
            [ class "has-bg-img2 our-story1"
            ]
            [ Html.h1
                [ class "title is-1 has-text-white has-text-right our-story2"
                ]
                [ Html.text "Our Story"
                ]
            ]
        ]