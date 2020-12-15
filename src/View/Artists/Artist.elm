module View.Artists.Artist exposing (view, Args)

import Html exposing (Html)
import Html.Attributes exposing (class, href, src, target, width)
import Msg.Msg exposing (Msg)

view : Args -> Html Msg
view args =
    Html.div
        [ class "box"
        ]
        [ Html.h1
            [ class "title"
            ]
            [ Html.text args.name
            ]
        , Html.img
            [ class "image"
            , src args.imageSrc
            , width 1000
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
                    , href args.spotifyURL
                    ]
                    []
                ]
            , Html.span
                [ class "icon is-large"
                ]
                [ Html.a
                    [ class "fab fa-apple fa-2x has-text-dark"
                    , target "_blank"
                    , href args.appleURL
                    ]
                    []
                ]
            , Html.span
                [ class "icon is-large"
                ]
                [ Html.a
                    [ class "fab fa-soundcloud fa-2x has-text-dark"
                    , target "_blank"
                    , href args.soundcloudURL
                    ]
                    []
                ]
            ]
        ]

type alias Args =
    { name: String
    , imageSrc: String
    , spotifyURL: String
    , appleURL: String
    , soundcloudURL: String
    }
