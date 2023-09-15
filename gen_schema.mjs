import { generateSchema } from 'purescript-graphql-client'

generateSchema({
  dir: './src/Begumpura/Press/Schema/Generated', // Where you want the generated code to go
  modulePath: ['Begumpura', 'Press', 'Generated'], // The name of the generated module
  useNewtypesForRecords: true,
  url: 'http://localhost:3100/api/graphql' // Your graphql enppdint
})