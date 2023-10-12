module Begumpura.Press.Directives.Generated
  ( deprecated
  , include
  , skip
  , specifiedBy
  )
  where
import Prelude

import GraphQL.Client.Args (NotNull)
import GraphQL.Client.Directive (ApplyDirective, applyDir)
import GraphQL.Client.Directive.Definition (Directive)
import GraphQL.Client.Directive.Location (MUTATION, QUERY, SUBSCRIPTION)
import GraphQL.Client.Operation (OpMutation(..), OpQuery(..), OpSubscription(..))
import Type.Data.List (type (:>), Nil')
import Type.Proxy (Proxy(..))

type Directives =
    ( Nil'
    )

include :: forall q args. args -> q -> ApplyDirective "include" args q 
include = applyDir (Proxy :: _ "include")
skip :: forall q args. args -> q -> ApplyDirective "skip" args q 
skip = applyDir (Proxy :: _ "skip")
deprecated :: forall q args. args -> q -> ApplyDirective "deprecated" args q 
deprecated = applyDir (Proxy :: _ "deprecated")
specifiedBy :: forall q args. args -> q -> ApplyDirective "specifiedBy" args q 
specifiedBy = applyDir (Proxy :: _ "specifiedBy")