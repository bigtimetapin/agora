module View.LandingPage.LandingPage exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Orientation as Orientation
import Model.WindowSize exposing (WindowSize)
import Msg.Msg exposing (Msg)
import View.Navbar as Navbar


view : Maybe WindowSize -> Html Msg
view _ =
    Navbar.view


body : Maybe WindowSize -> Html Msg
body maybeWindowSize =
    Html.section
        [ class "hero has-background-grey-lighter is-fullheight"
        ]
        [ Html.div
            [ class "hero-body has-text-centered is-family-secondary"
            ]
            [ Html.div
                [ class "container is-fluid"
                ]
                [ Html.div
                    [ class "columns is-mobile is-centered is-multiline"
                    ]
                    [ Html.div
                        [ class "column is-4"
                        ]
                        [ Html.text ("Width: " ++ viewWindowDimension maybeWindowSize .width)
                        ]
                    , Html.div
                        [ class "column is-4"
                        ]
                        [ Html.text ("Height: " ++ viewWindowDimension maybeWindowSize .height)
                        ]
                    , Html.div
                        [ class "column is-8-mobile"
                        ]
                        [ Html.text ("Orientation: " ++ viewOrientation maybeWindowSize)
                        ]
                    ]
                ]
            ]
        , Html.div
            [ class "hero-foot has-text-centered"
            ]
            [ Html.text "footer"
            ]
        ]


viewWindowDimension : Maybe WindowSize -> (WindowSize -> Int) -> String
viewWindowDimension maybeWindowSize f =
    case Maybe.map f maybeWindowSize of
        Just int ->
            String.fromInt int

        Nothing ->
            "Could not detect val"


viewOrientation : Maybe WindowSize -> String
viewOrientation maybeWindowSize =
    case maybeWindowSize of
        Just ws ->
            Orientation.toString ws.orientation

        Nothing ->
            "Could not detect val"
