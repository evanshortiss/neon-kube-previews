/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    appDir: true,
  },
  // This is necessary to support deployment as a via container image
  output: 'standalone'
}

module.exports = nextConfig
