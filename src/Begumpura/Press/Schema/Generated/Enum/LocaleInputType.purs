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
  = English
  | Assamese
  | Bengali
  | Gujarati
  | Hindi
  | Kannada
  | Kashmiri
  | Malayalam
  | Marathi
  | Meitei
  | Mizo
  | Odia
  | Punjabi_shahmukhi
  | Punjabi_gurmukhi
  | Santali
  | Tamil
  | Telugu
  | Urdu


instance eqLocaleInputType :: Eq LocaleInputType where 
  eq = eq `on` show

instance ordLocaleInputType :: Ord LocaleInputType where
  compare = compare `on` show

instance argToGqlLocaleInputType :: ArgGql LocaleInputType LocaleInputType

instance gqlArgStringLocaleInputType :: GqlArgString LocaleInputType where
  toGqlArgStringImpl = show

instance decodeJsonLocaleInputType :: DecodeJson LocaleInputType where
  decodeJson = decodeJson >=> case _ of 
    "english" -> pure English
    "assamese" -> pure Assamese
    "bengali" -> pure Bengali
    "gujarati" -> pure Gujarati
    "hindi" -> pure Hindi
    "kannada" -> pure Kannada
    "kashmiri" -> pure Kashmiri
    "malayalam" -> pure Malayalam
    "marathi" -> pure Marathi
    "meitei" -> pure Meitei
    "mizo" -> pure Mizo
    "odia" -> pure Odia
    "punjabi_shahmukhi" -> pure Punjabi_shahmukhi
    "punjabi_gurmukhi" -> pure Punjabi_gurmukhi
    "santali" -> pure Santali
    "tamil" -> pure Tamil
    "telugu" -> pure Telugu
    "urdu" -> pure Urdu
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
    English -> "english"
    Assamese -> "assamese"
    Bengali -> "bengali"
    Gujarati -> "gujarati"
    Hindi -> "hindi"
    Kannada -> "kannada"
    Kashmiri -> "kashmiri"
    Malayalam -> "malayalam"
    Marathi -> "marathi"
    Meitei -> "meitei"
    Mizo -> "mizo"
    Odia -> "odia"
    Punjabi_shahmukhi -> "punjabi_shahmukhi"
    Punjabi_gurmukhi -> "punjabi_gurmukhi"
    Santali -> "santali"
    Tamil -> "tamil"
    Telugu -> "telugu"
    Urdu -> "urdu"

instance enumLocaleInputType :: Enum LocaleInputType where
  succ a = case a of 
    English -> Just Assamese
    Assamese -> Just Bengali
    Bengali -> Just Gujarati
    Gujarati -> Just Hindi
    Hindi -> Just Kannada
    Kannada -> Just Kashmiri
    Kashmiri -> Just Malayalam
    Malayalam -> Just Marathi
    Marathi -> Just Meitei
    Meitei -> Just Mizo
    Mizo -> Just Odia
    Odia -> Just Punjabi_shahmukhi
    Punjabi_shahmukhi -> Just Punjabi_gurmukhi
    Punjabi_gurmukhi -> Just Santali
    Santali -> Just Tamil
    Tamil -> Just Telugu
    Telugu -> Just Urdu
    Urdu -> Nothing
  pred a = case a of 
    English -> Nothing 
    Assamese -> Just English
    Bengali -> Just Assamese
    Gujarati -> Just Bengali
    Hindi -> Just Gujarati
    Kannada -> Just Hindi
    Kashmiri -> Just Kannada
    Malayalam -> Just Kashmiri
    Marathi -> Just Malayalam
    Meitei -> Just Marathi
    Mizo -> Just Meitei
    Odia -> Just Mizo
    Punjabi_shahmukhi -> Just Odia
    Punjabi_gurmukhi -> Just Punjabi_shahmukhi
    Santali -> Just Punjabi_gurmukhi
    Tamil -> Just Santali
    Telugu -> Just Tamil
    Urdu -> Just Telugu

instance boundedLocaleInputType :: Bounded LocaleInputType where
  top = English
  bottom = Urdu

instance boundedEnumLocaleInputType :: BoundedEnum LocaleInputType where
  cardinality = Cardinality 18
  toEnum a = case a of
    0 -> Just English
    1 -> Just Assamese
    2 -> Just Bengali
    3 -> Just Gujarati
    4 -> Just Hindi
    5 -> Just Kannada
    6 -> Just Kashmiri
    7 -> Just Malayalam
    8 -> Just Marathi
    9 -> Just Meitei
    10 -> Just Mizo
    11 -> Just Odia
    12 -> Just Punjabi_shahmukhi
    13 -> Just Punjabi_gurmukhi
    14 -> Just Santali
    15 -> Just Tamil
    16 -> Just Telugu
    17 -> Just Urdu
    _ -> Nothing
  fromEnum a = case a of
    English -> 0
    Assamese -> 1
    Bengali -> 2
    Gujarati -> 3
    Hindi -> 4
    Kannada -> 5
    Kashmiri -> 6
    Malayalam -> 7
    Marathi -> 8
    Meitei -> 9
    Mizo -> 10
    Odia -> 11
    Punjabi_shahmukhi -> 12
    Punjabi_gurmukhi -> 13
    Santali -> 14
    Tamil -> 15
    Telugu -> 16
    Urdu -> 17
