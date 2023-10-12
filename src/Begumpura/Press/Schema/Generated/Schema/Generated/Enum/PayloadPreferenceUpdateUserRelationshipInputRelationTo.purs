module Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUpdateUserRelationshipInputRelationTo where

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


data PayloadPreferenceUpdateUserRelationshipInputRelationTo 
  = Users


instance eqPayloadPreferenceUpdateUserRelationshipInputRelationTo :: Eq PayloadPreferenceUpdateUserRelationshipInputRelationTo where 
  eq = eq `on` show

instance ordPayloadPreferenceUpdateUserRelationshipInputRelationTo :: Ord PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  compare = compare `on` show

instance argToGqlPayloadPreferenceUpdateUserRelationshipInputRelationTo :: ArgGql PayloadPreferenceUpdateUserRelationshipInputRelationTo PayloadPreferenceUpdateUserRelationshipInputRelationTo

instance gqlArgStringPayloadPreferenceUpdateUserRelationshipInputRelationTo :: GqlArgString PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  toGqlArgStringImpl = show

instance decodeJsonPayloadPreferenceUpdateUserRelationshipInputRelationTo :: DecodeJson PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  decodeJson = decodeJson >=> case _ of 
    "users" -> pure Users
    s -> Left $ TypeMismatch $ "Not a PayloadPreferenceUpdateUserRelationshipInputRelationTo: " <> s

instance encodeJsonPayloadPreferenceUpdateUserRelationshipInputRelationTo :: EncodeJson PayloadPreferenceUpdateUserRelationshipInputRelationTo where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPayloadPreferenceUpdateUserRelationshipInputRelationTo :: DecodeHasura PayloadPreferenceUpdateUserRelationshipInputRelationTo where 
  decodeHasura = decodeJson

instance encodeHasuraPayloadPreferenceUpdateUserRelationshipInputRelationTo :: EncodeHasura PayloadPreferenceUpdateUserRelationshipInputRelationTo where 
  encodeHasura = encodeJson

instance varTypeNamePayloadPreferenceUpdateUserRelationshipInputRelationTo :: VarTypeName PayloadPreferenceUpdateUserRelationshipInputRelationTo where 
  varTypeName _ = "PayloadPreferenceUpdateUserRelationshipInputRelationTo!"

instance showPayloadPreferenceUpdateUserRelationshipInputRelationTo :: Show PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  show a = case a of 
    Users -> "users"

instance enumPayloadPreferenceUpdateUserRelationshipInputRelationTo :: Enum PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  succ a = case a of 
    
    Users -> Nothing
  pred a = case a of 
    Users -> Nothing 
    

instance boundedPayloadPreferenceUpdateUserRelationshipInputRelationTo :: Bounded PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  top = Users
  bottom = Users

instance boundedEnumPayloadPreferenceUpdateUserRelationshipInputRelationTo :: BoundedEnum PayloadPreferenceUpdateUserRelationshipInputRelationTo where
  cardinality = Cardinality 1
  toEnum a = case a of
    0 -> Just Users
    _ -> Nothing
  fromEnum a = case a of
    Users -> 0

