module Model.State exposing (State(..), IsOpen(..))


type State
    = LandingPage IsOpen

type IsOpen
    = Open
    | Closed
