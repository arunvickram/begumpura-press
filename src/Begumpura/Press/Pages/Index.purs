module Begumpura.Press.Pages.Index where

import Prelude

import Data.Tuple.Nested ((/\))
import NextUI.NextUI as NextUI
import React.Basic.DOM (css)
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.DOM.Simplified.ToJSX (el)
import React.Basic.Events (handler_)
import React.Basic.Hooks as React

type Props = {
  params :: {
    lang :: String
  }
}

mkPage :: React.Component Props
mkPage = do
  React.component "Page" \props -> React.do
    pure $ R.main {}
      [ el NextUI.card
          { isFooterBlurred: true
          , radius: "none" }
          [ el NextUI.cardHeader {}
              [R.h1 {} props.params.lang] 
          , el NextUI.cardBody {}
              [R.h1 {} "Hello, World!"] 
          ]
      ]
