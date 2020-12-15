module View.Artists.Lucas exposing (view)

import Html exposing (Html)
import Msg.Msg exposing (Msg)
import View.Artists.Artist

view : Html Msg
view =
    View.Artists.Artist.view
        { name = "SHAI LU"
        , imageSrc = "images/artists/lucas/000019700005.jpeg"
        , spotifyURL = "https://open.spotify.com/artist/5Qgvqr0l3DeBWNt7gDFdKb?si=aeMkmjx_Qg-QCb6JKK2V9A"
        , appleURL = "https://music.apple.com/us/artist/shai-lu/1534265703"
        , soundcloudURL = "https://soundcloud.com/shailuchamploo"
        }