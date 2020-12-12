module View.LandingPage.OpenHamburgerMenu exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)


view : Html Msg
view =
    Html.div
        [ class "hero has-background-grey-lighter is-fullheight"
        ]
        [ Html.div
            [ class "hero-body has-text-centered is-family-secondary"
            ]
            [ Html.div
                [ class "container is-fluid"
                ]
                [ Html.div
                    [ class "columns is-multiline"
                    ]
                    [ Html.div
                        [ class "column is-12"
                        ]
                        [ Html.button
                            [ class "button"
                            ]
                            [ Html.text "Button1"
                            ]
                        ]
                    , Html.div
                        [ class "column is-12"
                        ]
                        [ Html.button
                            [ class "button"
                            ]
                            [ Html.text "Button1"
                            ]
                        ]
                    ]
                ]
            ]
        ]
