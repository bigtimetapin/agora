module Model.State exposing (IsOpen(..), State(..))


type State
    = LandingPage
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
