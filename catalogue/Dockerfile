FROM  node:14-alpine AS build

WORKDIR /opt/server

COPY package.json ./

# Install only production dependencies
RUN npm install --only=production

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

EXPOSE 8080
CMD ["node", "server.js"]