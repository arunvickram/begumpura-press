module Begumpura.Press.Hooks.UseGraphQL
  ( graphqlContext
  , graphqlProvider
  , graphqlClient
  )
  where

import Prelude

import Data.Maybe (Maybe(..))
import Effect.Unsafe (unsafePerformEffect)
import GraphQL.Client.BaseClients.Apollo (createClient)
import React.Basic (contextProvider, createContext, provider)

graphqlClient = unsafePerformEffect $ createClient 
    { url: "localhost:3100/api/graphql"
    , authToken: Nothing
    , headers: []
    } 

graphqlContext = unsafePerformEffect $ createContext graphqlClient

graphqlProvider = contextProvider graphqlContext
