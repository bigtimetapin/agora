module Msg.Navbar exposing (Navbar(..))

import Model.State exposing (IsOpen, State)


type Navbar
    = ClickedHamburgerMenu
    | ClickedTab State
