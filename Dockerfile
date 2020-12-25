FROM node:12
WORKDIR /app

ADD src src

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install
RUN npm run build

COPY . .

RUN cd dist && ls && cat index.js