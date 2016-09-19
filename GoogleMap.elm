module GoogleMap exposing (Position, Msg)

-- import Native.GoogleMap

import Html exposing (..)

-- MODEL
type alias Position =
    { lat : Float
    , lng : Float
    }

type Msg =
      MapLoaded
    | MapError

createMap : Int -> Int -> Platform.Task Error Html
createMap = Native.GoogleMap.createMap

-- gmap : String -> Position -> Html
-- gmap =
