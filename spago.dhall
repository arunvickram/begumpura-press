{ name = "my-nextjs-project"
, dependencies =
  [ "console"
  , "effect"
  , "graphql-client"
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
