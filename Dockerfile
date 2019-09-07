FROM node
WORKDIR /usr/src/app
COPY ./thetechhaven.com/package.json /usr/src/app
RUN npm install
COPY ./thetechhaven.com /usr/src/app/
EXPOSE 5000
CMD ["node", "server.js"]