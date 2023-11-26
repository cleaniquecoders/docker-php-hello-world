# Docker Hello World with PHP

This is a typical Hello World for PHP in Docker.

**Table of Content**

- [Docker Hello World with PHP](#docker-hello-world-with-php)
  - [Usage](#usage)
  - [Build the Image](#build-the-image)
  - [Run the Container](#run-the-container)
    - [Running the Container in Foreground](#running-the-container-in-foreground)
    - [Running the Container in Background](#running-the-container-in-background)
    - [Listing All the Running Containers](#listing-all-the-running-containers)
    - [Stopping the containers](#stopping-the-containers)
  - [Build Image with Arguments](#build-image-with-arguments)

## Usage

```bash
git clone https://github.com/cleaniquecoders/docker-php-hello-world
```

## Build the Image

Then navigate to directory and build the image:

```bash
cd docker-php-hello-world/
docker docker build -t hello-world .
```

> `t` argument used for tagging the image.
> `.` is the current directory build the image.

## Run the Container

Typically we can run in two approach:

### Running the Container in Foreground

Now run the container:

```bash
docker run -it -p 80:80 hello-world
```

> `p` argument used for map exposed port in Docker container to the Host machine.
> `it` argument used for output of the container is forwarded to our terminal.

Navigate to your browser now at [localhost](http://127.0.0.1).

### Running the Container in Background

You may want to run Docker in background:

```bash
docker run -d -p 80:80 hello-world
```

### Listing All the Running Containers

```bash
docker ps
```

Will output the following:

```bash
CONTAINER ID   IMAGE                                                 COMMAND                  CREATED          STATUS                PORTS                                                            NAMES
1a77e445027b   hello-world                                           "docker-php-entrypoi…"   56 seconds ago   Up 55 seconds         0.0.0.0:80->80/tcp                                               angry_taussig
```

### Stopping the containers

```bash
docker stop <container-id/name>
```

## Build Image with Arguments

Update the Dockerfile as following:

```dockerfile
ARG PHP_VERSION=8.2
FROM php:${PHP_VERSION}-apache

COPY . /var/www/html

EXPOSE 80
```

Then build based on the PHP version:

```bash
docker build --build-arg PHP_VERSION=7.4 -t hello-world:php7.4 .
```

You can verify the image exists:

```bash
docker images | grep hello-world
```

You can create for the rest of the PHP versions:

```bash
docker build --build-arg PHP_VERSION=8.0 -t hello-world:php8.0 .
docker build --build-arg PHP_VERSION=8.1 -t hello-world:php8.1 .
docker build --build-arg PHP_VERSION=8.2 -t hello-world:php8.2 .
docker build -t hello-world .
```

Check again the Docker images:

```bash
$ docker images | grep hello-world
hello-world                                      latest                         b061b7b40c71   37 seconds ago   513MB
hello-world                                      php8.2                         b061b7b40c71   37 seconds ago   513MB
hello-world                                      php8.1                         6fc6b148bfee   38 seconds ago   512MB
hello-world                                      php8.0                         f6a65a5c2d51   39 seconds ago   426MB
hello-world                                      php7.4                         fd9896b50cbd   40 seconds ago   422MB
```
