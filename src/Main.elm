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
import View.LandingPage.OpenHamburgerMenu


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
                ClickedHamburgerMenu isOpen ->
                    ( { model | state = LandingPage isOpen }, Cmd.none )

                ClickedTab state ->
                    ( { model | state = state }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    case model.state of
        LandingPage isOpen ->
            case isOpen of
                Model.State.Open ->
                    View.LandingPage.OpenHamburgerMenu.view

                Model.State.Closed ->
                    View.LandingPage.LandingPage.view model.windowSize

        Artists ->
            View.Artists.Artists.view

        OurStory ->
            View.LandingPage.LandingPage.view model.windowSize

        Shop ->
            View.LandingPage.LandingPage.view model.windowSize

        About ->
            View.LandingPage.LandingPage.view model.windowSize

        Contact ->
            View.LandingPage.LandingPage.view model.windowSize

        ReportAnIssue ->
            View.LandingPage.LandingPage.view model.windowSize

        Cart ->
            View.LandingPage.LandingPage.view model.windowSize

        Login ->
            View.LandingPage.LandingPage.view model.windowSize
