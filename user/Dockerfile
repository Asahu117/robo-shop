#Stage 1: Build the image with all necessary files and configurations

FROM node:14 as builder

WORKDIR /opt/server

COPY package*.json ./

RUN npm install --only=production

COPY server.js .


#stage 2: Create a clean image with only necessary files

FROM node:14-alpine

WORKDIR /opt/server

ENV INSTANA_AUTO_PROFILE true

EXPOSE 8080

COPY --from=builder /opt/server/node_modules /opt/server/node_modules
COPY --from=builder /opt/server/server.js /opt/server/server.js


CMD ["node", "server.js"]

