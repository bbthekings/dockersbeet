# base image
FROM node:16

# env variables
ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME maximilian
ENV MONGODB_PASSWORD eI3R3UfNlJgWJe17

# commands to be run
WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]