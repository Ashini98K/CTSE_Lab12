FROM node:16-alpine

RUN  npm i -g express

WORKDIR /app

# copy the apps in my machine to the working directory /app
COPY . .

RUN npm install

# upto 10 th line what we does is building the image

EXPOSE 3000
CMD [ "node", "index.js" ]