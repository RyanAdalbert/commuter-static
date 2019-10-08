FROM node:8
RUN npm install yarn



# RUN yarn global add @nteract/commuter@5.6.14 --exact
# ENTRYPOINT commuter
EXPOSE 4000
RUN git clone https://github.com/nteract/commuter.git
RUN cd commuter
WORKDIR commuter
RUN git checkout 702337871879df94f72e035eda0ca7797e68bc21
RUN yarn
CMD yarn run start
