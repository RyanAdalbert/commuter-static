FROM node:8
RUN npm install yarn
EXPOSE 4000
RUN cd commuter
WORKDIR commuter
RUN yarn
CMD yarn run start
