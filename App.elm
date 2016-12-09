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

allUrls = ["https://res.cloudinary.com/dpbanxukp/image/upload/v1481046333/sxk81wgbhcrjwouiteqd.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046332/kfk5qzyzavomixtunhlb.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046332/t9mhlmco7nnpdxvcm1pt.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046331/uxhrat1v3adha22u8opv.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046331/ylkyym5gphg2qbregr96.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046329/bw4yyvptnssedzpt5mbo.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046328/pakqyjhhsgf0d6hrczne.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046328/c57cdnssxk0r8tzz8812.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046327/p5m4m5xiuggzqipqdddk.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046326/wi51qtgbcnsxsf5iejuk.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046326/rma3jwsduw1wft5duejp.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046325/x2ypmkr7pwbcd6lidexs.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046325/rjh6zq5frqu6jz4hqodr.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046324/dail4f2gjpph0ktuwciq.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046323/jzqlv1ncmdkxpo5rkc3a.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046322/rydknfzjx0ibyyfs0q16.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481258991/eo0soxlut0aad5nrimq7.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046322/cywkqvag83amxjyim0uu.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046321/ysc1t0wa0zyfwr2ynnqn.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046320/vktmjgbi2xb8a28uiwu5.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046320/zrwphbhnccxkxifqmkwf.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046319/oyakamhyxo32t5qc830n.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046318/t4hd5mi9uvccckvsfcbx.png", "https://res.cloudinary.com/dpbanxukp/image/upload/v1481046133/edvqkxxbrsyq7vflsdmj.png"]

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
