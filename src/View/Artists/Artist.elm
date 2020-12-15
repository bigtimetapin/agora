module View.Artists.Artist exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, href, src, target, width)
import Msg.Msg exposing (Msg)

view : Html Msg
view =
    Html.div
        [ class "box"
        ]
        [ Html.h1
            [ class "title"
            ]
            [ Html.text "MARV ALI"
            ]
        , Html.img
            [ class "image"
            , src "images/artists/marv/000022640010.jpeg"
            , width 500
            ]
            []
        , Html.nav
            [ class "level is-mobile"
            ]
            [ Html.span
                [ class "icon is-large"
                ]
                [ Html.a
                    [ class "fab fa-spotify fa-2x has-text-dark"
                    , target "_blank"
                    , href "https://www.reddit.com"
                    ]
                    []
                ]
            ]
        ]
