module Main exposing (main)

-- MAIN

import Browser
import Html exposing (Html)
import Model.Model as Model exposing (Model)
import Model.State exposing (IsOpen(..), State(..))
import Msg.Msg exposing (Msg(..))
import Msg.Navbar exposing (Navbar(..))
import Sub.Sub as Sub
import View.Artists.Artists
import View.LandingPage.LandingPage


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.onResize
        }


init : () -> ( Model, Cmd Msg )
init _ =
    Model.init



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NewWindowSize windowSize ->
            ( { model | windowSize = windowSize }, Cmd.none )

        NavbarClick option ->
            case option of
                ClickedHamburgerMenu ->
                    case model.navbar of
                        Open ->
                            ( { model | navbar = Closed }, Cmd.none )

                        Closed ->
                            ( { model | navbar = Open }, Cmd.none )

                ClickedTab state ->
                    ( { model | state = state }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    case model.state of
        LandingPage ->
            View.LandingPage.LandingPage.view model

        Artists ->
            View.Artists.Artists.view model

        OurStory ->
            View.LandingPage.LandingPage.view model

        Shop ->
            View.LandingPage.LandingPage.view model

        About ->
            View.LandingPage.LandingPage.view model

        Contact ->
            View.LandingPage.LandingPage.view model

        ReportAnIssue ->
            View.LandingPage.LandingPage.view model

        Cart ->
            View.LandingPage.LandingPage.view model

        Login ->
            View.LandingPage.LandingPage.view model
