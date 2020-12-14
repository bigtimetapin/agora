module View.LandingPage.OpenHamburgerMenu exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Model.State exposing (IsOpen(..))
import Msg.Msg exposing (Msg(..))


view : Html Msg
view =
    hero


hero : Html Msg
hero =
    Html.section
        [ class "hero is-fullheight has-bg-img1"
        ]
        [ Html.div
            [ class "hero-body has-text-centered is-family-secondary"
            ]
            [ modal
            ]
        ]


modal : Html Msg
modal =
    Html.div
        [ class "modal is-active"
        ]
        [ Html.div
            [ class "modal-background"
            ]
            []
        , Html.div
            [ class "modal-content"
            ]
            [ Html.div
                [ class "columns is-multiline has-text-centered is-family-secondary"
                ]
                [ Html.div
                    [ class "column is-12"
                    ]
                    [ Html.button
                        [ class "button"
                        ]
                        [ Html.text "button1"
                        ]
                    ]
                , Html.div
                    [ class "column is-12"
                    ]
                    [ Html.button
                        [ class "button"
                        ]
                        [ Html.text "button2"
                        ]
                    ]
                , Html.div
                    [ class "column is-12"
                    ]
                    [ Html.button
                        [ class "button"
                        ]
                        [ Html.text "button3"
                        ]
                    ]
                , Html.div
                    [ class "column is-12"
                    ]
                    [ Html.button
                        [ class "button"
                        ]
                        [ Html.text "button4"
                        ]
                    ]
                ]
            ]
        , Html.button
            [ class "modal-close is-large"
            , onClick (ClickedHamburgerMenu Closed)
            ]
            []
        ]
