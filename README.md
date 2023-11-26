# Docker Hello World with PHP

This is a typical Hello World for PHP in Docker.

## Usage

```bash
git clone https://github.com/cleaniquecoders/docker-php-hello-world
```

Then navigate to directory and build the image:

```bash
cd docker-php-hello-world/
docker docker build -t hello-world .
```

> `t` argument used for tagging the image.
> `.` is the current directory build the image.

Now run the container:

```bash
docker run -it -p 80:80 hello-world
```

> `p` argument used for map exposed port in Docker container to the Host machine.
> `it` argument used for output of the container is forwarded to our terminal.

Navigate to your browser now at [localhost](http://127.0.0.1).

You may want to run Docker in background:

```bash
docker run -d -p 80:80 hello-world
```

Listing All the Running Containers

```bash
docker ps
```

Will output the following:

```bash
CONTAINER ID   IMAGE                                                 COMMAND                  CREATED          STATUS                PORTS                                                            NAMES
1a77e445027b   hello-world                                           "docker-php-entrypoi…"   56 seconds ago   Up 55 seconds         0.0.0.0:80->80/tcp                                               angry_taussig
```

Stopping the containers

```bash
docker stop <container-id/name>
```
