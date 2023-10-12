{ name = "my-nextjs-project"
, dependencies =
  [ "aff"
  , "argonaut-codecs"
  , "argonaut-core"
  , "console"
  , "effect"
  , "either"
  , "enums"
  , "graphql-client"
  , "lists"
  , "maybe"
  , "newtype"
  , "nextjs"
  , "nextui"
  , "prelude"
  , "react-basic"
  , "react-basic-dom"
  , "react-basic-hooks"
  , "tuples"
  , "typelevel-lists"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
