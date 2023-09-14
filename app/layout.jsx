import {Providers} from "./providers";
import './globals.css'

export default function RootLayout({children}) {
  return (
    <html className='dark'>
      <body>
        <Providers>
          {children}
        </Providers>
      </body>
    </html>
  );
}