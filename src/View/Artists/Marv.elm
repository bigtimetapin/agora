module View.Artists.Marv exposing (view)

import Html exposing (Html)
import Msg.Msg exposing (Msg)
import View.Artists.Artist


view : Html Msg
view =
    View.Artists.Artist.view
        { name = "MARV ALI"
        , imageSrc = "images/artists/marv/000022640010.jpeg"
        , spotifyURL = "https://open.spotify.com/artist/4tfP1Cv7zmcbFlIcouSrsd?si=lTYvLwUbQCWBqI75Vt7F-g"
        , appleURL = "https://music.apple.com/us/artist/marv-ali/1460198417"
        , soundcloudURL = "https://soundcloud.com/marv_ali"
        }
