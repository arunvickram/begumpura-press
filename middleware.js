import { NextResponse } from 'next/server'
import { i18nRouter } from 'next-i18n-router';
import i18nConfig from './i18nConfig';

export function middleware(request) {
  return i18nRouter(request, i18nConfig);
  // Check if there is any supported locale in the pathname
  // const pathname = request.nextUrl.pathname
  // const pathnameIsMissingLocale = locales.every(
  //   (locale) => !pathname.startsWith(`/${locale}/`) && pathname !== `/${locale}`
  // )
 
  // // Redirect if there is no locale
  // if (pathnameIsMissingLocale) { 
  //   // e.g. incoming request is /products
  //   // The new URL is now /en-US/products
  //   return NextResponse.redirect(
  //     new URL(`/eng/${pathname}`, request.url)
  //   )
  // }
}
 
export const config = {
  matcher: [
    // Skip all internal paths (_next)
    '/((?!_next|favicon\\.ico).*)',

    // Optional: only run on root (/) URL
    // '/'
  ],
}