{ name = "my-nextjs-project"
, dependencies =
  [ "argonaut-codecs"
  , "argonaut-core"
  , "console"
  , "effect"
  , "either"
  , "enums"
  , "graphql-client"
  , "maybe"
  , "newtype"
  , "nextjs"
  , "nextui"
  , "prelude"
  , "react-basic"
  , "react-basic-dom"
  , "react-basic-hooks"
  , "tuples"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
