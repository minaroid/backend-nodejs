FROM --platform=linux/amd64 node:16.15.1-alpine3.16

WORKDIR /usr/app

COPY package.json package-lock.json ./
RUN npm i

COPY ./build/ ./build


EXPOSE 3000

CMD ["npm", "run" ,"start:prod"]

