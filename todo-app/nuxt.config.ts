// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  "scripts": {
    "dev": "nuxt",
    "build": "node_modules/nuxt/bin/nuxt.js build -c ./nuxt.config.js",
    "start": "node_modules/nuxt/bin/nuxt.js start -c ./nuxt.config.js",
    "generate": "nuxt generate",
    "heroku-postbuild": "npm run build"
  },
})
