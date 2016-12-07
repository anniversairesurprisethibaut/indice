module App exposing (..)

import Html exposing (Html, div, text, img, li, ul)

-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )


-- MESSAGES


type Msg
    = NoOp

allUrls = ["https://res.cloudinary.com/dpbanxukp/image/upload/v1481046333/sxk81wgbhcrjwouiteqd.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046332/kfk5qzyzavomixtunhlb.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046332/t9mhlmco7nnpdxvcm1pt.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046331/uxhrat1v3adha22u8opv.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046331/ylkyym5gphg2qbregr96.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046330/eo0soxlut0aad5nrimq7.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046329/bw4yyvptnssedzpt5mbo.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046328/pakqyjhhsgf0d6hrczne.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046328/c57cdnssxk0r8tzz8812.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046327/p5m4m5xiuggzqipqdddk.png"]

displayImages : List String -> List Html Msg
displayImages imagesUrls =
  imagesUrls
  |> List.map (\url -> li[] [img[ src url ][]])


-- VIEW


view : Model -> Html Msg
view model =
    displayImages(allUrl)
    |> ul []


-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
