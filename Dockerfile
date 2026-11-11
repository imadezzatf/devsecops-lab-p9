# Build

# Base Image EOL
# FROM node:20-alpine AS builder

# Base Image LTS
FROM node:24-alpine AS builder

WORKDIR /build

COPY package.json package-lock.json ./

RUN npm ci --omit=dev && npm cache clean --force

# Runtime
# Base Image EOL
# FROM node:20-alpine AS runtime

# Base Image LTS
FROM node:24-alpine AS runtime

# Package Patch
RUN apk upgrade --no-cache && \
	rm -rf /usr/local/lib/node_modules/npm /usr/local/bin/npm /usr/local/bin/npx

ENV NODE_ENV=production
WORKDIR /app

COPY --from=builder --chown=node:node /build/node_modules ./node_modules
COPY --chown=node:node package.json app.js ./

USER node

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
	CMD wget -qO- http://127.0.0.1:8080/health || exit 1

CMD ["node", "app.js"]
