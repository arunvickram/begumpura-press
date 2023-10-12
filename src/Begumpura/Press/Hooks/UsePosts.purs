module Begumpura.Press.Hooks.UsePosts
  ( postsQuery
  )
  where

import Prelude

import Begumpura.Press.Schema.Generated (Mutation(..), Query(..))
import Begumpura.Press.Schema.Generated.Enum.FallbackLocaleInputType
import Begumpura.Press.Schema.Generated.Enum.LocaleInputType (LocaleInputType(..))
import Begumpura.Press.Symbols (content, title)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Aff.Class (liftAff)
import Effect.Class (liftEffect)
import GraphQL.Client.Args ((=>>))
import GraphQL.Client.BaseClients.Apollo (createClient)
import GraphQL.Client.BaseClients.Apollo (createClient)
import GraphQL.Client.Query (query)
import GraphQL.Client.Query (query, query_)
import GraphQL.Client.Types (Client)
import GraphQL.Client.Types (class GqlQuery)
import Type.Data.List (Nil')
import Type.Proxy (Proxy)

postsQuery client locale = query client "all posts in locale" 
  { "Posts": 
    { locale: locale
    } =>>
    { docs: 
      { title
      , content
      }
    }
  }
  