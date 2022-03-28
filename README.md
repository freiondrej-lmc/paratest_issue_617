Hello,

thanks for taking the time to investigate the issue https://github.com/paratestphp/paratest/issues/617!

Please run this:
```shell
docker-compose up -d
docker-compose exec php sh
composer install
composer test
```
