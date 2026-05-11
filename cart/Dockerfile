# Stage 1: Build
FROM node:14-alpine AS build

WORKDIR /opt/server

COPY package.json ./

# Install only production dependencies
RUN npm install --only=production

# Stage 2: Final Runtime
FROM node:14-alpine

# Set production environment
ENV NODE_ENV=production \
    INSTANA_AUTO_PROFILE=true


WORKDIR /opt/server

# Copy production dependencies from build stage
COPY --from=build /opt/server/node_modules ./node_modules
COPY --from=build /opt/server/package.json ./

# Copy application source
COPY server.js ./

# # Set ownership to node user
# RUN chown -R node:node /opt/server

# # Switch to non-root user
# USER node

EXPOSE 8080

# Note: Ensure /health endpoint exists or use another reachable path
# HEALTHCHECK --interval=30s --timeout=3s \
#   CMD wget --quiet --tries=1 --spider http://localhost:8080/health || exit 1

CMD ["node", "server.js"]
