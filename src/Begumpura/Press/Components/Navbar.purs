module Begumpura.Press.Components.Navbar
  ( navbar
  ) 
  where

import Prelude

import Begumpura.Press.Hooks.UseCurrentLocale (useCurrentLocale)
import Next.Link (link)
import NextUI.NextUI as NextUI
import React.Basic.DOM (css)
import React.Basic.DOM.Simplified.Generated as R
import React.Basic.DOM.Simplified.ToJSX (el)
import React.Basic.Events (handler_)
import React.Basic.Hooks as React

begumpuraBrand ∷ String → React.JSX
begumpuraBrand locale = el NextUI.navbarBrand
  {}
  [ el NextUI.navbarItem {} [link {href: href, children: text}] ]

  where
    href = "/" <> (if locale == "eng" then "" else locale)
    text = R.p { className: "font-black text-2xl" } "Begumpura."

links ∷ String → React.JSX
links locale = el NextUI.navbarContent
  {className: "hidden sm:flex gap-4", justify: "center"}
  [ el NextUI.navbarItem {} [aboutLink]

      

  ]

  where
    localeHref = "/" <> locale
    aboutLink = link { href: (localeHref <> "/about"), children: R.p {} "About" }

languagesDropdown ∷ React.JSX
languagesDropdown = el NextUI.dropdown
  {}
  [ el NextUI.navbarItem {}
    [ el NextUI.dropdownTrigger {}
      [ el NextUI.button {className: "p-0 bg-transparent data-[hover=true]:bg-transparent"}
        [ R.p {} "Languages"
        ]
      ]
    ]

  , el NextUI.dropdownMenu {}
    [ el NextUI.dropdownItem { key: "eng" } "English"
      
    ]
  ]

endLanguagesDropdown ∷ React.JSX
endLanguagesDropdown = 
  el NextUI.navbarContent
  { justify: "end" }
  [ languagesDropdown ]

navbar :: React.Component {}
navbar = 
  React.component "NavBar" \props -> React.do
    locale <- useCurrentLocale
    pure $ el NextUI.navbar
      {}
      [ begumpuraBrand locale
      , links locale
      , endLanguagesDropdown
      ]