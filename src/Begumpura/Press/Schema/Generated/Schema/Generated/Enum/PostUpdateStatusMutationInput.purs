module Begumpura.Press.Schema.Generated.Enum.PostUpdateStatusMutationInput where

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


data PostUpdateStatusMutationInput 
  = Draft
  | Published


instance eqPostUpdateStatusMutationInput :: Eq PostUpdateStatusMutationInput where 
  eq = eq `on` show

instance ordPostUpdateStatusMutationInput :: Ord PostUpdateStatusMutationInput where
  compare = compare `on` show

instance argToGqlPostUpdateStatusMutationInput :: ArgGql PostUpdateStatusMutationInput PostUpdateStatusMutationInput

instance gqlArgStringPostUpdateStatusMutationInput :: GqlArgString PostUpdateStatusMutationInput where
  toGqlArgStringImpl = show

instance decodeJsonPostUpdateStatusMutationInput :: DecodeJson PostUpdateStatusMutationInput where
  decodeJson = decodeJson >=> case _ of 
    "draft" -> pure Draft
    "published" -> pure Published
    s -> Left $ TypeMismatch $ "Not a PostUpdateStatusMutationInput: " <> s

instance encodeJsonPostUpdateStatusMutationInput :: EncodeJson PostUpdateStatusMutationInput where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPostUpdateStatusMutationInput :: DecodeHasura PostUpdateStatusMutationInput where 
  decodeHasura = decodeJson

instance encodeHasuraPostUpdateStatusMutationInput :: EncodeHasura PostUpdateStatusMutationInput where 
  encodeHasura = encodeJson

instance varTypeNamePostUpdateStatusMutationInput :: VarTypeName PostUpdateStatusMutationInput where 
  varTypeName _ = "PostUpdateStatusMutationInput!"

instance showPostUpdateStatusMutationInput :: Show PostUpdateStatusMutationInput where
  show a = case a of 
    Draft -> "draft"
    Published -> "published"

instance enumPostUpdateStatusMutationInput :: Enum PostUpdateStatusMutationInput where
  succ a = case a of 
    Draft -> Just Published
    Published -> Nothing
  pred a = case a of 
    Draft -> Nothing 
    Published -> Just Draft

instance boundedPostUpdateStatusMutationInput :: Bounded PostUpdateStatusMutationInput where
  top = Draft
  bottom = Published

instance boundedEnumPostUpdateStatusMutationInput :: BoundedEnum PostUpdateStatusMutationInput where
  cardinality = Cardinality 2
  toEnum a = case a of
    0 -> Just Draft
    1 -> Just Published
    _ -> Nothing
  fromEnum a = case a of
    Draft -> 0
    Published -> 1

