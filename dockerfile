FROM node:18-alpine3.19 

WORKDIR /usr/app

COPY package.json package-lock.json ./
RUN npm i

COPY ./build/ ./


EXPOSE 3000

CMD ["npm", "run" ,"start:prod"]

