
## Installation

Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/10.x/installation)

First install docker for youe machine  [Docker](https://www.docker.com/) 


Clone the repository

```
git clone https://github.com/devmjsaini/laravel-test.git

```
Create .env file 
```
cp .env.example .env

```

```
docker run -v $(pwd):/app composer install
cd ./laravel-test
```

Run docker containers

```
docker-compose up -d --build
```
***Note*** : 
- if permission error run ``` sudo docker-compose up -d --build ``` 
- for node version 16 use ``` docker run -it --rm -v "$PWD":/usr/src/app -w /usr/src/app node:16 npm run build ``` it will install node 16 version and generate build

### Laravel commands
- if getting key error run the following command

```
docker-compose exec app composer install
```
```
docker-compose exec app php artisan key:generate

```
- Run migratation for database

```
docker-compose exec app php artisan migrate
```

```
docker-compose exec app php artisan serve

```


Clear Cache
```
docker-compose exec app php view:clear
docker-compose exec app php artisan view:clear
docker-compose exec app php artisan cache:clear

```

Optimize the cache
```
docker-compose exec app php artisan optimize:clear
```


***Note***: 
- If want to run commands inside container first run ``` docker exec -it <container_name> /bin/sh ``` and then use commands for eg: run ``` docker exec -it app /bin/sh ``` you can use direct commands inside the container ``` php astisan  composer install ``` and run ``` exit ``` to exit the particular container



## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[OP.GG](https://op.gg)**
- **[WebReinvent](https://webreinvent.com/?utm_source=laravel&utm_medium=github&utm_campaign=patreon-sponsors)**
- **[Lendio](https://lendio.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

