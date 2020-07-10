FROM node:latest
WORKDIR /usr/src/app
COPY ./control.thetechhaven.com/package.json /usr/src/app
RUN npm install
COPY ./control.thetechhaven.com /usr/src/app/
EXPOSE 5000
CMD ["node", "server.js"]
