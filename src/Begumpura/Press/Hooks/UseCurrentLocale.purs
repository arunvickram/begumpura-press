module Begumpura.Press.Hooks.UseCurrentLocale where

import Prelude

import Effect (Effect)
import React.Basic.Hooks (Hook, JSX, ReactComponent, unsafeHook)

foreign import useCurrentLocale_ :: Effect String

foreign import data UseCurrentLocale :: Type -> Type

useCurrentLocale :: Hook UseCurrentLocale String
useCurrentLocale = unsafeHook useCurrentLocale_