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
                [ class "title is-3 has-text-white has-text-right our-story2"
                ]
                [ Html.text "Our Story"
                ]
            ]
        , bigBoyBody
        , Html.div
            [ class "section"
            ]
            [ Html.div
                [ class "container is-max-desktop"
                ]
                [ Html.text (String.repeat 30 blockOfText)
                ]
            ]
        , Html.div
            [ class "section"
            ]
            [ Html.div
                [ class "container is-max-desktop"
                ]
                [ Html.text (String.repeat 50 blockOfText)
                ]
            ]
        , Html.div
            [ class "section"
            ]
            [ Html.div
                [ class "container is-max-desktop"
                ]
                [ Html.text (String.repeat 20 blockOfText)
                ]
            ]
        ]


bigBoy : String
bigBoy =
    """
    "We're out here, looking for a tap in. It really boils down to that.
    Do I need more? There's nothing else to have."
    """


bigBoyBody : Html Msg
bigBoyBody =
    Html.div
        [ class "section"
        ]
        [ Html.div
            [ class "container is-max-desktop our-story3"
            ]
            [ Html.h2
                [ class "title is-size-4-touch is-size-2-desktop our-story4"
                ]
                [ Html.text bigBoy
                ]
            ]
        ]


blockOfText : String
blockOfText =
    """
    Big Block of Text.
    """
