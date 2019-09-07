# Tech Haven Docker

Repository for creating a docker enviroment for our Ghost CMS blog and website.

### Enviromental Variables

- Check the `.env.example` for what ENV variables you need

### Docker Depoloyment

Clone the thetechhaven.com repo to the root directory of this repo. Build the client file, and place it in the `/var/www/thetechhaven.com/hmtl` directory.

```sh
$ cd tech-haven-docker
$ git clone https://github.com/Tech-Haven/thetechhaven.com.git
$ npm run build --prefix thetechhaven.com/client
$ cp -R thetechhaven.com/client/* var/www/thetechhaven.com/html
$ docker-compose up -d
```

### Todo

- Automate letsencrypt deployment of certificates
