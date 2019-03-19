module CloudinaryVideoPlayer exposing
    ( view
    , analytics, autoShowRecommendations, autoplay, autoplayMode, cloudName, controls, crop, fluid, fontFace, height, loop, muted, pause, play, preload, publicId, stop, urlTransformation, videoId, videoTitle, width
    )

{-| This library will load the Custom Html Element into the DOM.


# HTML Element

@docs view


# Attributes

@docs analytics, autoShowRecommendations, autoplay, autoplayMode, cloudName, controls, crop, fluid, fontFace, height, loop, muted, pause, play, preload, publicId, stop, urlTransformation, videoId, videoTitle, width

-}

import Html exposing (Attribute, Html, node)
import Html.Attributes exposing (attribute, property)
import Json.Encode as Encode


{-| Renders a Cloudinary Video Player instance

    view
        [ CldVideoPlayer.cloudName "cloudname"
        , CldVideoPlayer.videoId "id-123"
        , CldVideoPlayer.videoTitle "My great video"
        , CldVideoPlayer.publicId "folder/public_id"
        , CldVideoPlayer.urlTransformation "w_940,h_354,c_limit"
        , CldVideoPlayer.controls True
        ]
        []

-}
view : List (Attribute msg) -> List (Html msg) -> Html msg
view =
    node "cld-video-player"


{-| Activate the analytics

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
analytics : Bool -> Attribute msg
analytics =
    Encode.bool >> property "analytics"


{-| Display videos recommendations

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
autoShowRecommendations : Bool -> Attribute msg
autoShowRecommendations =
    Encode.bool >> property "auto-show-recommendations"


{-| Sets video autoplay on load

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
autoplay : Bool -> Attribute msg
autoplay =
    Encode.bool >> property "autoplay"


{-| Sets video autoplay additional mode on load

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
autoplayMode : String -> Attribute msg
autoplayMode =
    attribute "autoplay-mode"


{-| Sets Cloudinary cloudname to build video URL

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
cloudName : String -> Attribute msg
cloudName =
    attribute "cloud-name"


{-| Display video player controls

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
controls : Bool -> Attribute msg
controls =
    Encode.bool >> property "controls"


{-| Sets video crop transformation

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
crop : String -> Attribute msg
crop =
    attribute "crop"


{-| Activate video fluid mode

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
fluid : Bool -> Attribute msg
fluid =
    Encode.bool >> property "crop"


{-| Sets font face to all texts displayed on video player

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
fontFace : String -> Attribute msg
fontFace =
    attribute "font-face"


{-| Sets transformation height property of video

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
height : Int -> Attribute msg
height =
    Encode.int >> property "height"


{-| Activate looping mode of video player

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
loop : Bool -> Attribute msg
loop =
    Encode.bool >> property "loop"


{-| Mute the sounds on video play

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
muted : Bool -> Attribute msg
muted =
    Encode.bool >> property "muted"


{-| Preload data on video load

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
preload : String -> Attribute msg
preload =
    attribute "preload"


{-| Pause the playing video

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
pause : Attribute msg
pause =
    attribute "control" "pause"


{-| Play the current video

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
play : Attribute msg
play =
    attribute "control" "play"


{-| Sets the Cloudinary video to play

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
publicId : String -> Attribute msg
publicId =
    attribute "public-id"


{-| Stop the playing video and set video time to 0

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
stop : Attribute msg
stop =
    attribute "control" "stop"


{-| Sets the video transformation for browser HTML5 native video player in case the Cloudinary Video Player is not loaded

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
urlTransformation : String -> Attribute msg
urlTransformation =
    attribute "url-transformation"


{-| Sets the Id of video HTML tag, used by the WebComponent to load the Cloudinary Video Player

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
videoId : String -> Attribute msg
videoId =
    attribute "video-id"


{-| Sets the Title of the video

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
videoTitle : String -> Attribute msg
videoTitle =
    attribute "video-title"


{-| Sets transformation width property of video

_See [Cloudinary Video Player API reference](https://cloudinary.com/documentation/video_player_api_reference) for more information_
_And [Cloudinary Video Player Attributes](https://github.com/rsignavong/stencil-cloudinary-video-player/blob/master/src/components/cld-video/readme.md) for details_

-}
width : Int -> Attribute msg
width =
    Encode.int >> property "width"
