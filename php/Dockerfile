FROM php:7.2.0beta2-fpm
MAINTAINER Mate Kocsis <kocsismate@woohoolabs.com>

ENV COMPOSER_VERSION 1.4.2
ENV PHP_REDIS_VERSION 3.1.3
ENV PHP_PRESTISSIMO_VERSION 0.3.7

ENV COMPOSER_HOME /composer
ENV NR_INSTALL_SILENT 1
ENV NR_INSTALL_KEY ""
ENV NR_APP_NAME ""
ENV PATH /composer/vendor/bin:/code:/code/vendor/bin:$PATH

COPY ./build /build

RUN chmod -R +x /build && \
    /build/system.sh && \
    /build/gettext.sh && \
    /build/php.sh && \
    /build/composer.sh && \
    #/build/blackfire.sh && \
    #/build/newrelic.sh && \
    /build/mysql.sh && \
    /build/msmtp.sh && \
    /build/supervisor.sh && \
    /build/permissions.sh && \
    /build/clean.sh && \
    /build/ensure.sh && \
    rm -R /build

USER www-data

WORKDIR /code

EXPOSE 9000
CMD php-fpm
