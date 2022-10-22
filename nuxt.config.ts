// https://v3.nuxtjs.org/api/configuration/nuxt.config
import eslintPlugin from "vite-plugin-eslint";
export default defineNuxtConfig({
  typescript: {
    shim: false,
    typeCheck: true,
  },
  vite: {
    plugins: [eslintPlugin()],
  },
});
