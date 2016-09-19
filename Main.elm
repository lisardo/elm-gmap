import Html.App as Html

import Task

import Map exposing (init, update, view)

main =
  Html.program
    { init = (init, Cmd.none), update = update, view = view, subscriptions = \_ -> Sub.none }


-- port lat = Signal.map (\m -> m.lat) app.model
-- port lat = Signal.map (.lat) app.model
