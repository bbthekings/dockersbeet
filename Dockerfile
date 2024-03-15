# base image
FROM node:16

# env variables
ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME test
ENV MONGODB_CLUSTER_ADDRESS cluster0.b2octig.mongodb.net
ENV MONGODB_USERNAME test
ENV MONGODB_PASSWORD test

# commands to be run
WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]