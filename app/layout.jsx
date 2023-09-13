'use client';

import { mkRootLayout, jsRootLayout as Page } from "../output/Layout/index";
import { Providers } from "./providers";

const Layout = () => (
  <Providers>
    <Page />
  </Providers>
)

export default Layout
