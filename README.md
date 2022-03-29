Hello,

thanks for taking the time to investigate the issue https://github.com/paratestphp/paratest/issues/617 and https://github.com/docker/for-mac/issues/6256!

Please run this:
```shell
docker-compose up -d
docker-compose exec php sh
composer install
composer test
```
It can be necessary to run composer test several times before the problem appears (you can delete .phpunit.result.cache between the runs, although I don't know whether it makes a difference).
