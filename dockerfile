FROM node:18-bullseye

WORKDIR /usr/app

COPY package.json package-lock.json ./
RUN npm i

COPY ./build/ ./build


EXPOSE 3000

CMD ["npm", "run" ,"start:prod"]

