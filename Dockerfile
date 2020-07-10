FROM node:latest
WORKDIR /usr/src/app
COPY ./control.thetechhaven.com.com/package.json /usr/src/app
RUN npm install
COPY ./control.thetechhaven.com.com /usr/src/app/
EXPOSE 5000
CMD ["node", "server.js"]
