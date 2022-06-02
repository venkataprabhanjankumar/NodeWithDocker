FROM node:16

WORKDIR /code

COPY package.json /code
COPY package-lock.json /code

RUN npm install

COPY . /code

EXPOSE 3000

CMD [ "node", "index.js" ]