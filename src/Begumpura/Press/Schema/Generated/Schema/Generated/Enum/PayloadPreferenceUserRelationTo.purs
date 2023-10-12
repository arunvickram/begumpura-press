module Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUserRelationTo where

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


data PayloadPreferenceUserRelationTo 
  = Users


instance eqPayloadPreferenceUserRelationTo :: Eq PayloadPreferenceUserRelationTo where 
  eq = eq `on` show

instance ordPayloadPreferenceUserRelationTo :: Ord PayloadPreferenceUserRelationTo where
  compare = compare `on` show

instance argToGqlPayloadPreferenceUserRelationTo :: ArgGql PayloadPreferenceUserRelationTo PayloadPreferenceUserRelationTo

instance gqlArgStringPayloadPreferenceUserRelationTo :: GqlArgString PayloadPreferenceUserRelationTo where
  toGqlArgStringImpl = show

instance decodeJsonPayloadPreferenceUserRelationTo :: DecodeJson PayloadPreferenceUserRelationTo where
  decodeJson = decodeJson >=> case _ of 
    "users" -> pure Users
    s -> Left $ TypeMismatch $ "Not a PayloadPreferenceUserRelationTo: " <> s

instance encodeJsonPayloadPreferenceUserRelationTo :: EncodeJson PayloadPreferenceUserRelationTo where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPayloadPreferenceUserRelationTo :: DecodeHasura PayloadPreferenceUserRelationTo where 
  decodeHasura = decodeJson

instance encodeHasuraPayloadPreferenceUserRelationTo :: EncodeHasura PayloadPreferenceUserRelationTo where 
  encodeHasura = encodeJson

instance varTypeNamePayloadPreferenceUserRelationTo :: VarTypeName PayloadPreferenceUserRelationTo where 
  varTypeName _ = "PayloadPreferenceUserRelationTo!"

instance showPayloadPreferenceUserRelationTo :: Show PayloadPreferenceUserRelationTo where
  show a = case a of 
    Users -> "users"

instance enumPayloadPreferenceUserRelationTo :: Enum PayloadPreferenceUserRelationTo where
  succ a = case a of 
    
    Users -> Nothing
  pred a = case a of 
    Users -> Nothing 
    

instance boundedPayloadPreferenceUserRelationTo :: Bounded PayloadPreferenceUserRelationTo where
  top = Users
  bottom = Users

instance boundedEnumPayloadPreferenceUserRelationTo :: BoundedEnum PayloadPreferenceUserRelationTo where
  cardinality = Cardinality 1
  toEnum a = case a of
    0 -> Just Users
    _ -> Nothing
  fromEnum a = case a of
    Users -> 0

