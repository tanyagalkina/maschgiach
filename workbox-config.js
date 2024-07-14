module.exports = {
  globDirectory: "dist",
  globPatterns: [
    "**/*.{html,js,css,png,svg,jpg,gif,json,woff,woff2,eot,ico,webmanifest,map}"
  ],
  swDest: "dist/service-worker.js",
  maximumFileSizeToCacheInBytes: 7 * 1024 * 1024, // 7 MB in bytes
  clientsClaim: true,
  skipWaiting: true
};