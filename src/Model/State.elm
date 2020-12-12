module Model.State exposing (IsOpen(..), State(..))


type State
    = LandingPage IsOpen


type IsOpen
    = Open
    | Closed
