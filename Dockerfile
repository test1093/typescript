FROM node:10

WORKDIR /usr/src/app
COPY package.json src tsconfig.json tslint.json /usr/src/app/
RUN npm install
npm install --save-dev typescript
RUN npm update
npm run build
