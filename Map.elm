module Map exposing (init, update, view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Task exposing (..)
import GoogleMap

-- MODEL
type alias Position =
    { lat : Float
    , lng : Float
    }

type alias Model = Position

init : Model
init = { lat = 43, lng = 4.5 }

-- UPDATE
type Msg =
      North

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        North -> ( { model | lat = model.lat + 1 }, Cmd.none )

-- VIEW
view : Model -> Html Msg
view model =
    div []
        [ button [ onClick North ] [ text "North" ]
        ]
