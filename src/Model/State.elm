module Model.State exposing (IsOpen(..), State(..))


type State
    = LandingPage IsOpen
    | Artists
    | OurStory
    | Shop
    | About
    | Contact
    | ReportAnIssue
    | Cart
    | Login


type IsOpen
    = Open
    | Closed
