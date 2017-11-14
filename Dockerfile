#Takes the official Node version 5 image from Docker Hub, 
FROM node:5

#Because Docker images can be pushed to Docker Hub and shared with other people, putting your name and email address in there is always a good practice.
MAINTAINER Salehin Rafi salehinrafi35@gmail.com

#Tell Node.js that this is a development image
ENV NODE_ENV=development

#Set the base folder inside the image for Docker to put files in
WORKDIR /usr/local/src

#Ready to start copying files from the local file system to the image
COPY package.json /usr/local/src/package.json

#Install the dependencies
RUN npm install

#Copy our source files and start compiling with Gulp
COPY gulpfile.js /usr/local/src/gulpfile.js
COPY .babelrc /usr/local/src/.babelrc
COPY src /usr/local/src/src
RUN npm run compile

#Docker containers are completely locked down. So, we need to open a port for the Node.js server.
EXPOSE 8877

#Default command to be executed automatically when running the container
CMD ["babel-node", "src/server"]
