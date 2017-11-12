FROM node:6

RUN apt-get update

ENV APPLICATION_DIRECTORY /usr/src/app

COPY . ${APPLICATION_DIRECTORY}/

WORKDIR ${APPLICATION_DIRECTORY}/

RUN npm prune &&  npm install --no-bin-links

CMD npm start