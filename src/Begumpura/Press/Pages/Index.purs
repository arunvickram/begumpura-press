module Begumpura.Press.Pages.Index
  ( mkPage
  )
  where

import Prelude

import Begumpura.Press.Components.Navbar (navbar)
import Begumpura.Press.Hooks.UseCurrentLocale (useCurrentLocale)
import Begumpura.Press.Hooks.UseGraphQL (graphqlContext)
import Data.Tuple.Nested ((/\))
import NextUI.NextUI as NextUI
import React.Basic.DOM (css)
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.DOM.Simplified.ToJSX (el)
import React.Basic.Events (handler_)
import React.Basic.Hooks (useContext)
import React.Basic.Hooks as React

type Props = {}

mkPage :: React.Component Props
mkPage = do
  nav <- navbar
  React.component "Page" \props -> React.do
    client <- useContext graphqlContext
    locale <- useCurrentLocale
    pure $ R.main {}
      [ nav {}
      , el NextUI.card
          { isFooterBlurred: true
          , radius: "none" }
          [ el NextUI.cardHeader {}
              [R.h1 {} locale] 
          , el NextUI.cardBody {}
              [R.h1 {} "Hello, World!"] 
          ]
      ]
