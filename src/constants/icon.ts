import type { Favicon } from '@/types/config.ts'

export const defaultFavicons: Favicon[] = [
  {
    src: '/favicon/logo.jpg',
    theme: 'light',
    sizes: '16x16 32x32 48x48 64x64 96x96 128x128 192x192 256x256 384x384 512x512',
  },
  {
    src: '/favicon/logo.jpg',
    theme: 'dark',
    sizes: '16x16 32x32 48x48 64x64 96x96 128x128 192x192 256x256 384x384 512x512',
  },
]
