# specifying the base images to fetch from the docker registry
FROM node:21-alpine

WORKDIR /tempapp

COPY public/ /tempapp/public
COPY src/ /tempapp/src
COPY package.json /tempapp/package.json

EXPOSE 5173

RUN npm install

# command that will be run first after starting the container
CMD ["npm", "run", "dev"]
