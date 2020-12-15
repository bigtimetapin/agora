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
                [ button { label = "LOGIN", msg = NavbarClick (ClickedTab Login), style = "is-link is-light" }
                , button { label = "CART", msg = NavbarClick (ClickedTab Cart), style = "is-link is-light" }
                , button { label = "ARTISTS", msg = NavbarClick (ClickedTab Artists), style = "is-dark" }
                , button { label = "OUR STORY", msg = NavbarClick (ClickedTab OurStory), style = "is-dark" }
                , button { label = "SHOP", msg = NavbarClick (ClickedTab Shop), style = "is-dark" }
                , button { label = "ABOUT", msg = NavbarClick (ClickedTab About), style = "is-dark" }
                , button { label = "CONTACT", msg = NavbarClick (ClickedTab Contact), style = "is-dark" }
                ]
            ]
        , Html.button
            [ class "modal-close is-large"
            , onClick (NavbarClick (ClickedHamburgerMenu Closed))
            ]
            []
        ]


type alias ButtonArgs =
    { label : String
    , msg : Msg
    , style : String
    }


button : ButtonArgs -> Html Msg
button buttonArgs =
    Html.div
        [ class "column is-12"
        , onClick buttonArgs.msg
        ]
        [ Html.button
            [ class ("button is-fullwidth is-medium " ++ buttonArgs.style)
            ]
            [ Html.text buttonArgs.label
            ]
        ]
