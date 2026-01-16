FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm install

COPY . .

EXPOSE 3000

ENV PAT_1=""

CMD ["node", "express.js"]
