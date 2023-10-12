module Begumpura.Press.Schema.Generated.Enum.PostStatusInput where

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


data PostStatusInput 
  = Draft
  | Published


instance eqPostStatusInput :: Eq PostStatusInput where 
  eq = eq `on` show

instance ordPostStatusInput :: Ord PostStatusInput where
  compare = compare `on` show

instance argToGqlPostStatusInput :: ArgGql PostStatusInput PostStatusInput

instance gqlArgStringPostStatusInput :: GqlArgString PostStatusInput where
  toGqlArgStringImpl = show

instance decodeJsonPostStatusInput :: DecodeJson PostStatusInput where
  decodeJson = decodeJson >=> case _ of 
    "draft" -> pure Draft
    "published" -> pure Published
    s -> Left $ TypeMismatch $ "Not a PostStatusInput: " <> s

instance encodeJsonPostStatusInput :: EncodeJson PostStatusInput where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPostStatusInput :: DecodeHasura PostStatusInput where 
  decodeHasura = decodeJson

instance encodeHasuraPostStatusInput :: EncodeHasura PostStatusInput where 
  encodeHasura = encodeJson

instance varTypeNamePostStatusInput :: VarTypeName PostStatusInput where 
  varTypeName _ = "PostStatusInput!"

instance showPostStatusInput :: Show PostStatusInput where
  show a = case a of 
    Draft -> "draft"
    Published -> "published"

instance enumPostStatusInput :: Enum PostStatusInput where
  succ a = case a of 
    Draft -> Just Published
    Published -> Nothing
  pred a = case a of 
    Draft -> Nothing 
    Published -> Just Draft

instance boundedPostStatusInput :: Bounded PostStatusInput where
  top = Draft
  bottom = Published

instance boundedEnumPostStatusInput :: BoundedEnum PostStatusInput where
  cardinality = Cardinality 2
  toEnum a = case a of
    0 -> Just Draft
    1 -> Just Published
    _ -> Nothing
  fromEnum a = case a of
    Draft -> 0
    Published -> 1

