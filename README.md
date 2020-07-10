# Tech Haven Docker

Repository for creating a docker enviroment for our website.

### Enviromental Variables

- Check the `.env.example` for what ENV variables you need

### Docker Depoloyment

Clone the control.thetechhaven.com repo to the root directory of this repo. Build the client file, and place it in the `/var/www/control.thetechhaven.com/hmtl` directory.

```sh
$ cd tech-haven-docker
$ git clone https://github.com/Tech-Haven/control.thetechhaven.com.git
$ npm run build --prefix control.thetechhaven.com/client
$ cp -R control.thetechhaven.com/client/* var/www/control.thetechhaven.com/html
$ docker-compose up -d
```
