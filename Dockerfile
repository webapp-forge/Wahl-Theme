FROM php:8.3-apache

# ---- UID/GID mapping for WSL host user (fixes permission issues on bind mounts) ----
ARG UID=1000
ARG GID=1000

RUN groupmod -g ${GID} www-data \
 && usermod  -u ${UID} -g ${GID} www-data
# -------------------------------------------------------------------------------

RUN apt-get update && apt-get install -y \
    jq \
    git unzip curl ca-certificates \
    libicu-dev libzip-dev \
    libpng-dev libjpeg62-turbo-dev libfreetype6-dev \
    libxml2-dev \
 && rm -rf /var/lib/apt/lists/*

# Set Apache DocumentRoot to Shopware public/
ENV APACHE_DOCUMENT_ROOT=/app/public

RUN sed -ri 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/000-default.conf \
 && sed -ri 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf \
 && printf '<Directory "/app/public">\nAllowOverride All\nRequire all granted\n</Directory>\n' > /etc/apache2/conf-available/shopware.conf \
 && a2enconf shopware


RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install -j$(nproc) intl pdo_mysql zip gd opcache

RUN a2enmod rewrite headers
WORKDIR /app
