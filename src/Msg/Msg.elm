module Msg.Msg exposing (Msg(..))

import Model.WindowSize exposing (WindowSize)
import Msg.Navbar


type Msg
    = NewWindowSize (Maybe WindowSize)
    | NavbarClick Msg.Navbar.Navbar
