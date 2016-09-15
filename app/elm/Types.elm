module Types exposing (..)

import List.Extra
import Transit


type Msg
    = Goto Slide
    | SetSlide Slide
    | TransitMsg (Transit.Msg Msg)


type alias Model =
    Transit.WithTransition
        { slide : Slide
        }


type Slide
    = Cover
    | HelloWorld
    | HelloWeb
    | RailsEh
    | JustASec
    | CrystalExample
    | UnionTypes
    | Overloaded
    | CBinding
    | Macros
    | Concurrency
    | ConcurrencyExample
    | Parallelism
    | JustASec2
    | Awesome


slideOrder : List Slide
slideOrder =
    [ Cover
    , HelloWorld
    , HelloWeb
    , RailsEh
    , JustASec
    , CrystalExample
    , UnionTypes
    , Overloaded
    , CBinding
    , Macros
    , Concurrency
    , ConcurrencyExample
    , Parallelism
    , JustASec2
    , Awesome
    ]


previousSlide : Slide -> Maybe Slide
previousSlide current =
    slideOrder
        |> List.reverse
        |> List.Extra.dropWhile (not << (==) current)
        |> List.drop 1
        |> List.head


nextSlide : Slide -> Maybe Slide
nextSlide current =
    slideOrder
        |> List.Extra.dropWhile (not << (==) current)
        |> List.drop 1
        |> List.head


initialModel : Model
initialModel =
    { slide = Cover
    , transition = Transit.empty
    }


init : ( Model, Cmd Msg )
init =
    initialModel ! []
