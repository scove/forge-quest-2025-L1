FROM node:22-alpine

RUN npm install -g @forge/cli

#creating user and group per Atlassian recommendations
RUN addgroup -S forgers && adduser -S blacksmith -G forgers
USER blacksmith
