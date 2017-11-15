# Docker Tutorial

This is a React front-end and Node back-end sample application, meant to be set up using Docker.

## Prerequisites

####Docker

* A Dockerfile describes a Docker image, not a container.

* The container is an instance of this image.

* If you want to run a container without building an image (which means without creating a Dockerfile), you need to use an existing image on the Docker Hub ([link here](https://hub.docker.com/explore/)).

* The Docker Hub is a Docker online repository.

## Running the tests

1. Download or clone this repo.

2. Navigate to the downloaded folder.

3. Build the image with the command:

   ```
    docker build -t <what-ever-you-want> .
   ```

4. Running the container.

   ```
   docker run -p 8877:8877 -p 3001:3001 --name node-tut -v $(pwd)/src:/usr/local/src/src --sig-proxy=false  docker build -t <what-ever-you-want> . npm run browsersync
   ```

5. View on the browser by pasting an IP address of the Docker host’s virtual machine with port 8877. 
    
    ```
    docker-machine ip default
    ```

    Eg: 
    ```
    http://192.168.99.100:8877/
    ```

## Credits
[What is Dockerfile?](https://www.conetix.com.au/blog/what-is-a-dockerfile)

[Why You Should Stop Installing Your WebDev Environment Locally](https://www.smashingmagazine.com/2016/04/stop-installing-your-webdev-environment-locally-with-docker/)

[Start up docker container without Dockerfile
](https://stackoverflow.com/a/41870219/4216992)
