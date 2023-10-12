module Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUserRelationshipInputRelationTo where

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


data PayloadPreferenceUserRelationshipInputRelationTo 
  = Users


instance eqPayloadPreferenceUserRelationshipInputRelationTo :: Eq PayloadPreferenceUserRelationshipInputRelationTo where 
  eq = eq `on` show

instance ordPayloadPreferenceUserRelationshipInputRelationTo :: Ord PayloadPreferenceUserRelationshipInputRelationTo where
  compare = compare `on` show

instance argToGqlPayloadPreferenceUserRelationshipInputRelationTo :: ArgGql PayloadPreferenceUserRelationshipInputRelationTo PayloadPreferenceUserRelationshipInputRelationTo

instance gqlArgStringPayloadPreferenceUserRelationshipInputRelationTo :: GqlArgString PayloadPreferenceUserRelationshipInputRelationTo where
  toGqlArgStringImpl = show

instance decodeJsonPayloadPreferenceUserRelationshipInputRelationTo :: DecodeJson PayloadPreferenceUserRelationshipInputRelationTo where
  decodeJson = decodeJson >=> case _ of 
    "users" -> pure Users
    s -> Left $ TypeMismatch $ "Not a PayloadPreferenceUserRelationshipInputRelationTo: " <> s

instance encodeJsonPayloadPreferenceUserRelationshipInputRelationTo :: EncodeJson PayloadPreferenceUserRelationshipInputRelationTo where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPayloadPreferenceUserRelationshipInputRelationTo :: DecodeHasura PayloadPreferenceUserRelationshipInputRelationTo where 
  decodeHasura = decodeJson

instance encodeHasuraPayloadPreferenceUserRelationshipInputRelationTo :: EncodeHasura PayloadPreferenceUserRelationshipInputRelationTo where 
  encodeHasura = encodeJson

instance varTypeNamePayloadPreferenceUserRelationshipInputRelationTo :: VarTypeName PayloadPreferenceUserRelationshipInputRelationTo where 
  varTypeName _ = "PayloadPreferenceUserRelationshipInputRelationTo!"

instance showPayloadPreferenceUserRelationshipInputRelationTo :: Show PayloadPreferenceUserRelationshipInputRelationTo where
  show a = case a of 
    Users -> "users"

instance enumPayloadPreferenceUserRelationshipInputRelationTo :: Enum PayloadPreferenceUserRelationshipInputRelationTo where
  succ a = case a of 
    
    Users -> Nothing
  pred a = case a of 
    Users -> Nothing 
    

instance boundedPayloadPreferenceUserRelationshipInputRelationTo :: Bounded PayloadPreferenceUserRelationshipInputRelationTo where
  top = Users
  bottom = Users

instance boundedEnumPayloadPreferenceUserRelationshipInputRelationTo :: BoundedEnum PayloadPreferenceUserRelationshipInputRelationTo where
  cardinality = Cardinality 1
  toEnum a = case a of
    0 -> Just Users
    _ -> Nothing
  fromEnum a = case a of
    Users -> 0

