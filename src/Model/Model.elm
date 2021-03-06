module Model.Model exposing (Model, init)

import Browser.Dom
import Model.State exposing (IsOpen(..), State(..))
import Model.WindowSize as WindowSize exposing (WindowSize)
import Msg.Msg exposing (Msg(..))
import Task


type alias Model =
    { state : State
    , windowSize : Maybe WindowSize
    , navbar : IsOpen
    }


init : ( Model, Cmd Msg )
init =
    let
        handle : Result x Browser.Dom.Viewport -> Msg
        handle result =
            case result of
                Ok viewport ->
                    NewWindowSize
                        (Just
                            (WindowSize.apply
                                (Basics.round viewport.viewport.width)
                                (Basics.round viewport.viewport.height)
                            )
                        )

                Err _ ->
                    NewWindowSize Nothing
    in
    ( { state = Artists
      , windowSize = Nothing
      , navbar = Closed
      }
    , Task.attempt handle Browser.Dom.getViewport
    )
