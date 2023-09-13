module Layout
  ( jsRootLayout
  , mkRootLayout
  )
  where

import NextUI.NextUI
import Prelude

import Effect.Unsafe (unsafePerformEffect)
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.DOM.Simplified.ToJSX (el)
import React.Basic.Hooks (JSX)
import React.Basic.Hooks as React
import Unsafe.Coerce (unsafeCoerce)

jsRootLayout :: { children :: Array React.JSX } -> JSX
jsRootLayout = unsafePerformEffect mkRootLayout

mkRootLayout :: React.Component { children :: Array React.JSX }
mkRootLayout = do
  pure $ \{ children } -> React.do
    R.html {}
      [ R.head { lang: "en" } React.empty
      , R.body {} 
        [ el nextUIProvider {} children
        ]
      ]
  
