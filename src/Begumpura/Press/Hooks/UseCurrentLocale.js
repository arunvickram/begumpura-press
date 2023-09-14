import { useCurrentLocale } from 'next-i18n-router/client'

// TODO: update this every single time you update the main i18config
const i18nconfig = {
  locales: [
    'eng', 
    'asm',
    'ben',
    'guj',
    'hin',
    'mal',
    'mar',
    'lus',
    'mni',
    'ori',
    'pan',
    'pjb',
    'sat',
    'tam', 
    'tel',
    'urd',
  ],
  defaultLocale: 'eng',
  localeDetector: false,
}

export function useCurrentLocale_() {
  return useCurrentLocale(i18nconfig)
}