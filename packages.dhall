let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.10-20231010/packages.dhall
        sha256:c826c519402f25c96aadeb6d8d4a152a339a3d2852b2ce804649c256fdd76233

-- let upstream =
--       https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20230105/packages.dhall
--         sha256:3e9fbc9ba03e9a1fcfd895f65e2d50ee2f5e86c4cd273f3d5c841b655a0e1bda

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
        { repo =
            "https://github.com/purescript-react/purescript-react-basic-dom.git"
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
      , graphql-client =
        { repo =
            "https://github.com/OxfordAbstracts/purescript-graphql-client.git"
        , version = "v10.0.0"
        , dependencies =
          [ "aff"
          , "aff-promise"
          , "affjax"
          , "affjax-node"
          , "affjax-web"
          , "argonaut-codecs"
          , "argonaut-core"
          , "argonaut-generic"
          , "arrays"
          , "bifunctors"
          , "console"
          , "control"
          , "datetime"
          , "debug"
          , "effect"
          , "either"
          , "enums"
          , "exceptions"
          , "filterable"
          , "foldable-traversable"
          , "foreign"
          , "foreign-object"
          , "functions"
          , "halogen-subscriptions"
          , "heterogeneous"
          , "http-methods"
          , "integers"
          , "language-cst-parser"
          , "lists"
          , "literals"
          , "maybe"
          , "media-types"
          , "newtype"
          , "node-buffer"
          , "node-fs"
          , "now"
          , "nullable"
          , "numbers"
          , "ordered-collections"
          , "parsing"
          , "partial"
          , "prelude"
          , "profunctor"
          , "profunctor-lenses"
          , "psci-support"
          , "quickcheck"
          , "record"
          , "record-studio"
          , "spec"
          , "spec-discovery"
          , "string-parsers"
          , "strings"
          , "strings-extra"
          , "tidy-codegen"
          , "transformers"
          , "tuples"
          , "typelevel-lists"
          , "typelevel-prelude"
          , "unfoldable"
          , "unicode"
          , "unsafe-coerce"
          , "untagged-union"
          , "variant"
          ]
        }
      , tidy-codegen =
        { repo = "https://github.com/natefaubion/purescript-tidy-codegen.git"
        , version = "v4.0.0"
        , dependencies =
          [ "aff"
          , "ansi"
          , "arrays"
          , "avar"
          , "bifunctors"
          , "console"
          , "control"
          , "dodo-printer"
          , "effect"
          , "either"
          , "enums"
          , "exceptions"
          , "filterable"
          , "foldable-traversable"
          , "free"
          , "identity"
          , "integers"
          , "language-cst-parser"
          , "lazy"
          , "lists"
          , "maybe"
          , "newtype"
          , "node-buffer"
          , "node-child-process"
          , "node-fs"
          , "node-path"
          , "node-process"
          , "node-streams"
          , "ordered-collections"
          , "parallel"
          , "partial"
          , "posix-types"
          , "prelude"
          , "record"
          , "safe-coerce"
          , "st"
          , "strings"
          , "tidy"
          , "transformers"
          , "tuples"
          , "type-equality"
          , "unicode"
          ]
        }
        , dodo-printer =
          { repo = "https://github.com/natefaubion/purescript-dodo-printer"
          , version = "v2.2.1"
          , dependencies =
              [ "aff"
              , "ansi"
              , "arrays"
              , "avar"
              , "console"
              , "control"
              , "effect"
              , "either"
              , "exceptions"
              , "foldable-traversable"
              , "integers"
              , "lists"
              , "maybe"
              , "minibench"
              , "newtype"
              , "node-buffer"
              , "node-child-process"
              , "node-fs"
              , "node-os"
              , "node-path"
              , "node-process"
              , "node-streams"
              , "parallel"
              , "partial"
              , "prelude"
              , "safe-coerce"
              , "strings"
              , "tuples"
              ]
          }
        , language-cst-parser =
          { repo = "https://github.com/natefaubion/purescript-language-cst-parser.git"
          , version = "main"
          , dependencies =
            [ "arrays"
            , "console"
            , "const"
            , "control"
            , "effect"
            , "either"
            , "enums"
            , "foldable-traversable"
            , "free"
            , "functions"
            , "functors"
            , "identity"
            , "integers"
            , "lazy"
            , "lists"
            , "maybe"
            , "newtype"
            , "node-process"
            , "numbers"
            , "ordered-collections"
            , "partial"
            , "prelude"
            , "st"
            , "strings"
            , "transformers"
            , "tuples"
            , "typelevel-prelude"
            , "unfoldable"
            , "unsafe-coerce"
            ]
          }
        , node-fs = 
          { repo = "https://github.com/purescript-node/purescript-node-fs"
          , version = "master"
          , dependencies = 
            [
              "datetime",
              "effect",
              "either",
              "enums",
              "exceptions",
              "functions",
              "integers",
              "js-date",
              "maybe",
              "node-buffer",
              "node-path",
              "node-streams",
              "nullable",
              "partial",
              "prelude",
              "strings",
              "unsafe-coerce",
            ]
          }
        , spec-discovery =
          { repo = "https://github.com/purescript-spec/purescript-spec-discovery.git"
          , version = "master"
          , dependencies =
            [ "aff"
            , "aff-promise"
            , "effect"
            , "foldable-traversable"
            , "prelude"
            , "spec"
            ]
          }
        , tidy =
          { repo = "https://github.com/natefaubion/purescript-tidy.git"
          , version = "v0.10.0"
          , dependencies =
            [ "arrays"
            , "control"
            , "dodo-printer"
            , "either"
            , "foldable-traversable"
            , "lists"
            , "maybe"
            , "newtype"
            , "ordered-collections"
            , "partial"
            , "prelude"
            , "language-cst-parser"
            , "strings"
            , "tuples"
            ]
          }
      }

in  upstream // additions // overrides
