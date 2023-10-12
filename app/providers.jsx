'use client'

import {NextUIProvider} from '@nextui-org/react'
import { graphqlProvider as GraphQLProvider, graphqlClient } from '../output/Begumpura.Press.Hooks.UseGraphQL'

export function Providers({children}) {
  return (
    <NextUIProvider>
      <GraphQLProvider value={graphqlClient}>
        {children}
      </GraphQLProvider>
    </NextUIProvider>
  )
}