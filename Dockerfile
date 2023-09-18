
FROM node:18

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["nodemon", "app.js"]
