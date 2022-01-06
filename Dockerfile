FROM node:16.13-alpine3.14 AS dependencies
WORKDIR /app
# copy over the package.json
COPY package.json ./
# Install the dependencies
RUN yarn install --production