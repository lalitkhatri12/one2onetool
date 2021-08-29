FROM node:16
WORKDIR /one2onetool
COPY package.json /one2onetool
RUN npm install
RUN npm test
COPY . /one2onetool
CMD node index.js
EXPOSE 3000
ENTRYPOINT "nohup node index.js &"
