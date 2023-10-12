module Begumpura.Press.Schema.Generated.Enum.LocaleInputType where

import Prelude

import Data.Argonaut.Decode (class DecodeJson, JsonDecodeError(..), decodeJson)
import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Bounded (class Bounded)
import Data.Enum (class Enum, class BoundedEnum, Cardinality(..))
import Data.Either (Either(..))
import Data.Function (on)
import Data.Maybe (Maybe(..))
import GraphQL.Client.Args (class ArgGql)
import GraphQL.Client.ToGqlString (class GqlArgString)
import GraphQL.Hasura.Decode (class DecodeHasura)
import GraphQL.Hasura.Encode (class EncodeHasura)
import GraphQL.Client.Variables.TypeName (class VarTypeName)


data LocaleInputType 
  = Eng
  | Asm
  | Ben
  | Grt
  | Guj
  | Div
  | Hin
  | Kan
  | Kas
  | Kha
  | Trp
  | Kok
  | Mal
  | Mar
  | Mni
  | Lus
  | Nep
  | Ori
  | Pan
  | Pjb
  | Snd
  | Sin
  | Tam
  | Tel
  | Tcz
  | Tcy
  | Urd


instance eqLocaleInputType :: Eq LocaleInputType where 
  eq = eq `on` show

instance ordLocaleInputType :: Ord LocaleInputType where
  compare = compare `on` show

instance argToGqlLocaleInputType :: ArgGql LocaleInputType LocaleInputType

instance gqlArgStringLocaleInputType :: GqlArgString LocaleInputType where
  toGqlArgStringImpl = show

instance decodeJsonLocaleInputType :: DecodeJson LocaleInputType where
  decodeJson = decodeJson >=> case _ of 
    "eng" -> pure Eng
    "asm" -> pure Asm
    "ben" -> pure Ben
    "grt" -> pure Grt
    "guj" -> pure Guj
    "div" -> pure Div
    "hin" -> pure Hin
    "kan" -> pure Kan
    "kas" -> pure Kas
    "kha" -> pure Kha
    "trp" -> pure Trp
    "kok" -> pure Kok
    "mal" -> pure Mal
    "mar" -> pure Mar
    "mni" -> pure Mni
    "lus" -> pure Lus
    "nep" -> pure Nep
    "ori" -> pure Ori
    "pan" -> pure Pan
    "pjb" -> pure Pjb
    "snd" -> pure Snd
    "sin" -> pure Sin
    "tam" -> pure Tam
    "tel" -> pure Tel
    "tcz" -> pure Tcz
    "tcy" -> pure Tcy
    "urd" -> pure Urd
    s -> Left $ TypeMismatch $ "Not a LocaleInputType: " <> s

instance encodeJsonLocaleInputType :: EncodeJson LocaleInputType where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraLocaleInputType :: DecodeHasura LocaleInputType where 
  decodeHasura = decodeJson

instance encodeHasuraLocaleInputType :: EncodeHasura LocaleInputType where 
  encodeHasura = encodeJson

instance varTypeNameLocaleInputType :: VarTypeName LocaleInputType where 
  varTypeName _ = "LocaleInputType!"

instance showLocaleInputType :: Show LocaleInputType where
  show a = case a of 
    Eng -> "eng"
    Asm -> "asm"
    Ben -> "ben"
    Grt -> "grt"
    Guj -> "guj"
    Div -> "div"
    Hin -> "hin"
    Kan -> "kan"
    Kas -> "kas"
    Kha -> "kha"
    Trp -> "trp"
    Kok -> "kok"
    Mal -> "mal"
    Mar -> "mar"
    Mni -> "mni"
    Lus -> "lus"
    Nep -> "nep"
    Ori -> "ori"
    Pan -> "pan"
    Pjb -> "pjb"
    Snd -> "snd"
    Sin -> "sin"
    Tam -> "tam"
    Tel -> "tel"
    Tcz -> "tcz"
    Tcy -> "tcy"
    Urd -> "urd"

instance enumLocaleInputType :: Enum LocaleInputType where
  succ a = case a of 
    Eng -> Just Asm
    Asm -> Just Ben
    Ben -> Just Grt
    Grt -> Just Guj
    Guj -> Just Div
    Div -> Just Hin
    Hin -> Just Kan
    Kan -> Just Kas
    Kas -> Just Kha
    Kha -> Just Trp
    Trp -> Just Kok
    Kok -> Just Mal
    Mal -> Just Mar
    Mar -> Just Mni
    Mni -> Just Lus
    Lus -> Just Nep
    Nep -> Just Ori
    Ori -> Just Pan
    Pan -> Just Pjb
    Pjb -> Just Snd
    Snd -> Just Sin
    Sin -> Just Tam
    Tam -> Just Tel
    Tel -> Just Tcz
    Tcz -> Just Tcy
    Tcy -> Just Urd
    Urd -> Nothing
  pred a = case a of 
    Eng -> Nothing 
    Asm -> Just Eng
    Ben -> Just Asm
    Grt -> Just Ben
    Guj -> Just Grt
    Div -> Just Guj
    Hin -> Just Div
    Kan -> Just Hin
    Kas -> Just Kan
    Kha -> Just Kas
    Trp -> Just Kha
    Kok -> Just Trp
    Mal -> Just Kok
    Mar -> Just Mal
    Mni -> Just Mar
    Lus -> Just Mni
    Nep -> Just Lus
    Ori -> Just Nep
    Pan -> Just Ori
    Pjb -> Just Pan
    Snd -> Just Pjb
    Sin -> Just Snd
    Tam -> Just Sin
    Tel -> Just Tam
    Tcz -> Just Tel
    Tcy -> Just Tcz
    Urd -> Just Tcy

instance boundedLocaleInputType :: Bounded LocaleInputType where
  top = Eng
  bottom = Urd

instance boundedEnumLocaleInputType :: BoundedEnum LocaleInputType where
  cardinality = Cardinality 27
  toEnum a = case a of
    0 -> Just Eng
    1 -> Just Asm
    2 -> Just Ben
    3 -> Just Grt
    4 -> Just Guj
    5 -> Just Div
    6 -> Just Hin
    7 -> Just Kan
    8 -> Just Kas
    9 -> Just Kha
    10 -> Just Trp
    11 -> Just Kok
    12 -> Just Mal
    13 -> Just Mar
    14 -> Just Mni
    15 -> Just Lus
    16 -> Just Nep
    17 -> Just Ori
    18 -> Just Pan
    19 -> Just Pjb
    20 -> Just Snd
    21 -> Just Sin
    22 -> Just Tam
    23 -> Just Tel
    24 -> Just Tcz
    25 -> Just Tcy
    26 -> Just Urd
    _ -> Nothing
  fromEnum a = case a of
    Eng -> 0
    Asm -> 1
    Ben -> 2
    Grt -> 3
    Guj -> 4
    Div -> 5
    Hin -> 6
    Kan -> 7
    Kas -> 8
    Kha -> 9
    Trp -> 10
    Kok -> 11
    Mal -> 12
    Mar -> 13
    Mni -> 14
    Lus -> 15
    Nep -> 16
    Ori -> 17
    Pan -> 18
    Pjb -> 19
    Snd -> 20
    Sin -> 21
    Tam -> 22
    Tel -> 23
    Tcz -> 24
    Tcy -> 25
    Urd -> 26

