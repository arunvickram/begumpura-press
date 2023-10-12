module Begumpura.Press.Schema.Generated.Enum.PostStatusMutationInput where

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


data PostStatusMutationInput 
  = Draft
  | Published


instance eqPostStatusMutationInput :: Eq PostStatusMutationInput where 
  eq = eq `on` show

instance ordPostStatusMutationInput :: Ord PostStatusMutationInput where
  compare = compare `on` show

instance argToGqlPostStatusMutationInput :: ArgGql PostStatusMutationInput PostStatusMutationInput

instance gqlArgStringPostStatusMutationInput :: GqlArgString PostStatusMutationInput where
  toGqlArgStringImpl = show

instance decodeJsonPostStatusMutationInput :: DecodeJson PostStatusMutationInput where
  decodeJson = decodeJson >=> case _ of 
    "draft" -> pure Draft
    "published" -> pure Published
    s -> Left $ TypeMismatch $ "Not a PostStatusMutationInput: " <> s

instance encodeJsonPostStatusMutationInput :: EncodeJson PostStatusMutationInput where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPostStatusMutationInput :: DecodeHasura PostStatusMutationInput where 
  decodeHasura = decodeJson

instance encodeHasuraPostStatusMutationInput :: EncodeHasura PostStatusMutationInput where 
  encodeHasura = encodeJson

instance varTypeNamePostStatusMutationInput :: VarTypeName PostStatusMutationInput where 
  varTypeName _ = "PostStatusMutationInput!"

instance showPostStatusMutationInput :: Show PostStatusMutationInput where
  show a = case a of 
    Draft -> "draft"
    Published -> "published"

instance enumPostStatusMutationInput :: Enum PostStatusMutationInput where
  succ a = case a of 
    Draft -> Just Published
    Published -> Nothing
  pred a = case a of 
    Draft -> Nothing 
    Published -> Just Draft

instance boundedPostStatusMutationInput :: Bounded PostStatusMutationInput where
  top = Draft
  bottom = Published

instance boundedEnumPostStatusMutationInput :: BoundedEnum PostStatusMutationInput where
  cardinality = Cardinality 2
  toEnum a = case a of
    0 -> Just Draft
    1 -> Just Published
    _ -> Nothing
  fromEnum a = case a of
    Draft -> 0
    Published -> 1

