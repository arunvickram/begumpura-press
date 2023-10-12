module Begumpura.Press.Schema.Generated.Enum.PostStatus where

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


data PostStatus 
  = Draft
  | Published


instance eqPostStatus :: Eq PostStatus where 
  eq = eq `on` show

instance ordPostStatus :: Ord PostStatus where
  compare = compare `on` show

instance argToGqlPostStatus :: ArgGql PostStatus PostStatus

instance gqlArgStringPostStatus :: GqlArgString PostStatus where
  toGqlArgStringImpl = show

instance decodeJsonPostStatus :: DecodeJson PostStatus where
  decodeJson = decodeJson >=> case _ of 
    "draft" -> pure Draft
    "published" -> pure Published
    s -> Left $ TypeMismatch $ "Not a PostStatus: " <> s

instance encodeJsonPostStatus :: EncodeJson PostStatus where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPostStatus :: DecodeHasura PostStatus where 
  decodeHasura = decodeJson

instance encodeHasuraPostStatus :: EncodeHasura PostStatus where 
  encodeHasura = encodeJson

instance varTypeNamePostStatus :: VarTypeName PostStatus where 
  varTypeName _ = "PostStatus!"

instance showPostStatus :: Show PostStatus where
  show a = case a of 
    Draft -> "draft"
    Published -> "published"

instance enumPostStatus :: Enum PostStatus where
  succ a = case a of 
    Draft -> Just Published
    Published -> Nothing
  pred a = case a of 
    Draft -> Nothing 
    Published -> Just Draft

instance boundedPostStatus :: Bounded PostStatus where
  top = Draft
  bottom = Published

instance boundedEnumPostStatus :: BoundedEnum PostStatus where
  cardinality = Cardinality 2
  toEnum a = case a of
    0 -> Just Draft
    1 -> Just Published
    _ -> Nothing
  fromEnum a = case a of
    Draft -> 0
    Published -> 1

