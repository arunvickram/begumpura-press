module Head
  ( mkHead
  )
  where

import Prelude

import React.Basic.DOM as RD
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.Hooks as React

mkHead :: React.Component {}
mkHead = do
  pure $ \props -> React.fragment
    [ R.title {} "Create Next App"
    , RD.meta { content: "width=device-width, initial-scale=1", name: "viewport" }
    , RD.meta { name: "description", content: "Generated by create next app" }
    ]