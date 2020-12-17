module View.Navbar exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (alt, class, src, width)
import Html.Events exposing (onClick)
import Model.State exposing (IsOpen(..), State(..))
import Msg.Msg exposing (Msg(..))
import Msg.Navbar exposing (Navbar(..))


view : IsOpen -> Html Msg
view isOpen =
    let
        isActive : String
        isActive =
            case isOpen of
                Open ->
                    " is-active"

                Closed ->
                    ""
    in
    Html.nav
        [ class "navbar is-black is-fixed-top"
        ]
        [ Html.div
            [ class "navbar-brand"
            ]
            [ Html.a
                [ class "navbar-item"
                , onClick (NavbarClick (ClickedTab LandingPage))
                ]
                [ Html.img
                    [ src "images/agora-nav.jpeg"
                    , alt "Agora Records"
                    , width 250
                    ]
                    []
                ]
            , Html.a
                [ class ("navbar-burger" ++ isActive)
                , onClick (NavbarClick ClickedHamburgerMenu)
                ]
                [ Html.span [] []
                , Html.span [] []
                , Html.span [] []
                ]
            ]
        , Html.div
            [ class ("navbar-menu is-size-3" ++ isActive)
            ]
            [ Html.div
                [ class "navbar-start"
                ]
                [ Html.a
                    [ class "navbar-item is-tab"
                    , onClick (NavbarClick (ClickedTab Artists))
                    ]
                    [ Html.text "Artists"
                    ]
                , Html.a
                    [ class "navbar-item is-tab"
                    , onClick (NavbarClick (ClickedTab OurStory))
                    ]
                    [ Html.text "Our Story"
                    ]
                , Html.a
                    [ class "navbar-item is-tab"
                    , onClick (NavbarClick (ClickedTab Shop))
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
                            , onClick (NavbarClick (ClickedTab About))
                            ]
                            [ Html.text "About"
                            ]
                        , Html.a
                            [ class "navbar-item"
                            , onClick (NavbarClick (ClickedTab Contact))
                            ]
                            [ Html.text "Contact"
                            ]
                        , Html.hr
                            [ class "navbar-divider"
                            ]
                            []
                        , Html.a
                            [ class "navbar-item"
                            , onClick (NavbarClick (ClickedTab ReportAnIssue))
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
                            , onClick (NavbarClick (ClickedTab Cart))
                            ]
                            [ Html.text "Cart"
                            ]
                        , Html.a
                            [ class "button is-light"
                            , onClick (NavbarClick (ClickedTab Login))
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
