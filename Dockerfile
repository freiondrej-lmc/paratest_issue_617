ARG PHP_VERSION=7.4

FROM php:${PHP_VERSION}-fpm-alpine

RUN set -eux; \
    apk add --no-cache --virtual .build-deps \
		$PHPIZE_DEPS \
		icu-dev \
		libzip-dev \
		zlib-dev \
	; \
	\
	docker-php-ext-configure zip; \
	docker-php-ext-install -j$(nproc) \
		intl \
		zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV PATH="${PATH}:/root/.composer/vendor/bin"

WORKDIR /srv/app
