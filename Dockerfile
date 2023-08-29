FROM node:18.17-alpine

WORKDIR /app

COPY package*.json .

RUN npm install --production

COPY ./src ./src

CMD ["npm", "run", "start"]
