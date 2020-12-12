module Msg.Msg exposing (Msg(..))

import Model.State exposing (IsOpen)
import Model.WindowSize exposing (WindowSize)


type Msg
    = NewWindowSize (Maybe WindowSize)
    | ClickedHamburgerMenu IsOpen
