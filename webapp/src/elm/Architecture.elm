module Architecture exposing (Architecture, decodeArchitectures, fromString, name)

import Json.Decode as D


type Architecture
    = Architecture String


fromString : String -> Architecture
fromString =
    Architecture


decodeArchitectures : D.Decoder (List Architecture)
decodeArchitectures =
    D.list decodeArchitecture


decodeArchitecture : D.Decoder Architecture
decodeArchitecture =
    D.map fromString D.string


name : Architecture -> String
name (Architecture arch) =
    arch
