FROM php:8.0-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Install extensions PHP pgsql
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# Install extension PHP zip
RUN apt install -y \
    zlib1g-dev \
    libzip-dev && \
    docker-php-ext-install zip

# Install extension PHP pgsql
RUN docker-php-ext-install pdo_pgsql mbstring exif pcntl bcmath gd

# Install extension PHP Imagick
RUN apt install -y libmagickwand-dev --no-install-recommends && \
    printf "\n" | pecl install imagick && \
    docker-php-ext-enable imagick

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Get Node
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash && apt install -y nodejs

# Get latest Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# Set working directory
WORKDIR /var/www/app

EXPOSE 9000