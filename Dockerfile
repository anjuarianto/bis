# Use the official PHP image as a base
FROM php:5.6-apache

RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list
# Update package lists and upgrade packages
RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y \
        default-libmysqlclient-dev \
        libssl-dev \
        libxml2-dev \
        libpng-dev \
        zlib1g-dev \
        g++ \
        curl \
        wget \
        openssh-client \
        vim \
        git

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql \
    mysqli \
    gd \
    xml \
    mbstring \
    zip \
    bcmath \
    json

# Copy your application code into the container
COPY ./src /var/www/html

# Set the working directory in the container
WORKDIR /var/www/html

# RUN a2enmod rewrite
# Enable Apache modules
RUN a2enmod rewrite


# Install Composer if needed
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Expose port 80 for web traffic
EXPOSE 80
