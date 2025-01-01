FROM node:latest

COPY package.json /app/
COPY package-lock.json /app/
COPY src /app/

WORKDIR /app

RUN npm install

CMD ["node", "server.js"]