let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20230105/packages.dhall
        sha256:3e9fbc9ba03e9a1fcfd895f65e2d50ee2f5e86c4cd273f3d5c841b655a0e1bda

let additions =
  { nextjs =
    { repo = "https://github.com/rowtype-yoga/purescript-nextjs.git"
    , version = "main"
    , dependencies =
      [ "aff"
      , "aff-promise"
      , "console"
      , "datetime"
      , "effect"
      , "either"
      , "foldable-traversable"
      , "foreign"
      , "foreign-object"
      , "functions"
      , "identity"
      , "maybe"
      , "nullable"
      , "options"
      , "partial"
      , "prelude"
      , "react-basic"
      , "react-basic-hooks"
      , "transformers"
      , "typelevel-prelude"
      , "unsafe-coerce"
      , "yoga-json"
      ]
    }

  }
let overrides =
  { react-basic-dom =
    { repo = "https://github.com/purescript-react/purescript-react-basic-dom.git"
    , version = "v6.1.0"
    , dependencies =
      [ "arrays"
      , "effect"
      , "foldable-traversable"
      , "foreign-object"
      , "maybe"
      , "nullable"
      , "prelude"
      , "react-basic"
      , "record"
      , "unsafe-coerce"
      , "web-dom"
      , "web-events"
      , "web-file"
      , "web-html"
      ]
    }
  , nextui =
    { repo = "https://github.com/arunvickram/purescript-nextui.git"
    , version = "main"
    , dependencies = [ "effect", "prelude", "react-basic-hooks" ]
    }
  }
in  upstream // additions // overrides