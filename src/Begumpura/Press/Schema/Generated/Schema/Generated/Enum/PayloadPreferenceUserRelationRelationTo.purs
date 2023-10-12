module Begumpura.Press.Schema.Generated.Enum.PayloadPreferenceUserRelationRelationTo where

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


data PayloadPreferenceUserRelationRelationTo 
  = Users


instance eqPayloadPreferenceUserRelationRelationTo :: Eq PayloadPreferenceUserRelationRelationTo where 
  eq = eq `on` show

instance ordPayloadPreferenceUserRelationRelationTo :: Ord PayloadPreferenceUserRelationRelationTo where
  compare = compare `on` show

instance argToGqlPayloadPreferenceUserRelationRelationTo :: ArgGql PayloadPreferenceUserRelationRelationTo PayloadPreferenceUserRelationRelationTo

instance gqlArgStringPayloadPreferenceUserRelationRelationTo :: GqlArgString PayloadPreferenceUserRelationRelationTo where
  toGqlArgStringImpl = show

instance decodeJsonPayloadPreferenceUserRelationRelationTo :: DecodeJson PayloadPreferenceUserRelationRelationTo where
  decodeJson = decodeJson >=> case _ of 
    "users" -> pure Users
    s -> Left $ TypeMismatch $ "Not a PayloadPreferenceUserRelationRelationTo: " <> s

instance encodeJsonPayloadPreferenceUserRelationRelationTo :: EncodeJson PayloadPreferenceUserRelationRelationTo where 
  encodeJson = show >>> encodeJson

instance decdoeHasuraPayloadPreferenceUserRelationRelationTo :: DecodeHasura PayloadPreferenceUserRelationRelationTo where 
  decodeHasura = decodeJson

instance encodeHasuraPayloadPreferenceUserRelationRelationTo :: EncodeHasura PayloadPreferenceUserRelationRelationTo where 
  encodeHasura = encodeJson

instance varTypeNamePayloadPreferenceUserRelationRelationTo :: VarTypeName PayloadPreferenceUserRelationRelationTo where 
  varTypeName _ = "PayloadPreferenceUserRelationRelationTo!"

instance showPayloadPreferenceUserRelationRelationTo :: Show PayloadPreferenceUserRelationRelationTo where
  show a = case a of 
    Users -> "users"

instance enumPayloadPreferenceUserRelationRelationTo :: Enum PayloadPreferenceUserRelationRelationTo where
  succ a = case a of 
    
    Users -> Nothing
  pred a = case a of 
    Users -> Nothing 
    

instance boundedPayloadPreferenceUserRelationRelationTo :: Bounded PayloadPreferenceUserRelationRelationTo where
  top = Users
  bottom = Users

instance boundedEnumPayloadPreferenceUserRelationRelationTo :: BoundedEnum PayloadPreferenceUserRelationRelationTo where
  cardinality = Cardinality 1
  toEnum a = case a of
    0 -> Just Users
    _ -> Nothing
  fromEnum a = case a of
    Users -> 0

