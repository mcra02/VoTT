FROM node:10

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json


RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm","run","react-start"]