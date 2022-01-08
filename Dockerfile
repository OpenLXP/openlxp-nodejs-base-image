FROM node:16.13-alpine3.14 AS dependencies
# copy over the package.json
COPY package.json ./
RUN yarn set version 1.22.15
# Install the dependencies
RUN yarn install --production