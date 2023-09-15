module Begumpura.Press.Components.Hero
  ( hero
  )
  where

import Prelude

import Data.Tuple.Nested ((/\))
import NextUI.NextUI as NextUI
import React.Basic.DOM (css)
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.DOM.Simplified.ToJSX (el)
import React.Basic.Events (handler_)
import React.Basic.Hooks as React

type Props = {}
hero ∷ React.Component Props
hero = do
  React.component "Hero" \props -> React.do
    pure $ R.main {} "Hero"