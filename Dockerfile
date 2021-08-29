FROM node:12
WORKDIR /one2onetool
COPY package.json /one2onetool
RUN npm install
RUN npm jest
COPY . /one2onetool
CMD node index.js
EXPOSE 3000
