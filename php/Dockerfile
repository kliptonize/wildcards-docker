FROM php:7.1-apache
MAINTAINER Kliptonize <koen@ebro.me>

# Install needed dependencies
RUN apt-get update && apt-get install -y libssl-dev && rm -rf /var/lib/apt/lists/*

# Install mongodb
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

# Activate mod_rewrite
RUN a2enmod rewrite

# Hmmmm...
# ADD vhost.conf /etc/apache2/sites-enabled/

# Copy App
COPY containers/wildcards-cms/ /var/www/html/

# Expose the default port
EXPOSE 80