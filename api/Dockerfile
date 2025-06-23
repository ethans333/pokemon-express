FROM node:24-alpine

WORKDIR /usr/local/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY src ./

CMD ["node", "main.ts"]