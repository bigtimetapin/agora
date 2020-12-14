module View.LandingPage.OpenHamburgerMenu exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Model.State exposing (IsOpen(..), State(..))
import Msg.Msg exposing (Msg(..))
import Msg.Navbar exposing (Navbar(..))


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
                        [ class "button is-dark is-fullwidth is-static"
                        ]
                        [ Html.text "MENU"
                        ]
                    ]
                , button "ARTISTS" (NavbarClick (ClickedTab Artists))
                , button "OUR STORY" (NavbarClick (ClickedTab OurStory))
                , button "SHOP" (NavbarClick (ClickedTab Shop))
                , button "ABOUT" (NavbarClick (ClickedTab About))
                , button "CONTACT" (NavbarClick (ClickedTab Contact))
                , button "CART" (NavbarClick (ClickedTab Cart))
                , button "LOGIN" (NavbarClick (ClickedTab Login))
                ]
            ]
        , Html.button
            [ class "modal-close is-large"
            , onClick (NavbarClick (ClickedHamburgerMenu Closed))
            ]
            []
        ]


button : String -> Msg -> Html Msg
button label msg =
    Html.div
        [ class "column is-12"
        , onClick msg
        ]
        [ Html.button
            [ class "button is-dark is-fullwidth"
            ]
            [ Html.text label
            ]
        ]
