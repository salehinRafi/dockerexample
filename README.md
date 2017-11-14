# Docker Tutorial

This is a React front-end and Node back-end sample application, meant to be set up using Docker.

## Prerequisites

Docker

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

[https://www.smashingmagazine.com/2016/04/stop-installing-your-webdev-environment-locally-with-docker/](https://www.smashingmagazine.com/2016/04/stop-installing-your-webdev-environment-locally-with-docker/)
