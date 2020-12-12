module View.Navbar exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (alt, class, src, width)
import Html.Events exposing (onClick)
import Model.State exposing (IsOpen(..))
import Msg.Msg exposing (Msg(..))


view : Html Msg
view =
    Html.nav
        [ class "navbar is-black"
        ]
        [ Html.div
            [ class "navbar-brand"
            ]
            [ Html.a
                [ class "navbar-item"

                -- onClick
                ]
                [ Html.img
                    [ src "images/agora-nav.jpeg"
                    , alt "Agora Records"
                    , width 250
                    ]
                    []
                ]
            , Html.a
                [ class "navbar-burger"
                , onClick (ClickedHamburgerMenu Open)
                ]
                [ Html.span [] []
                , Html.span [] []
                , Html.span [] []
                ]
            ]
        , Html.div
            [ class "navbar-menu is-size-3"
            ]
            [ Html.div
                [ class "navbar-start"
                ]
                [ Html.a
                    [ class "navbar-item is-tab"

                    -- onClick
                    ]
                    [ Html.text "Artists"
                    ]
                , Html.a
                    [ class "navbar-item is-tab"

                    -- onClick
                    ]
                    [ Html.text "Our Story"
                    ]
                , Html.a
                    [ class "navbar-item is-tab"

                    -- onClick
                    ]
                    [ Html.text "Shop"
                    ]
                , Html.div
                    [ class "navbar-item has-dropdown is-hoverable"
                    ]
                    [ Html.a
                        [ class "navbar-link"
                        ]
                        [ Html.text "More"
                        ]
                    , Html.div
                        [ class "navbar-dropdown is-size-3"
                        ]
                        [ Html.a
                            [ class "navbar-item"
                            ]
                            [ Html.text "About"
                            ]
                        , Html.a
                            [ class "navbar-item"
                            ]
                            [ Html.text "Contact"
                            ]
                        , Html.hr
                            [ class "navbar-divider"
                            ]
                            []
                        , Html.a
                            [ class "navbar-item"
                            ]
                            [ Html.text "Report an issue"
                            ]
                        ]
                    ]
                ]
            , Html.div
                [ class "navbar-end"
                ]
                [ Html.div
                    [ class "navbar-item"
                    ]
                    [ Html.div
                        [ class "buttons are-medium"
                        ]
                        [ Html.a
                            [ class "button is-primary"
                            ]
                            [ Html.text "Cart"
                            ]
                        , Html.a
                            [ class "button is-light"
                            ]
                            [ Html.strong
                                []
                                [ Html.text "Login"
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
