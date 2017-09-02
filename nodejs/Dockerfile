FROM node:8.2.1
MAINTAINER Kliptonize <koen@ebro.me>

# Expose the default port
EXPOSE 8443

# Create/Set the working directory
RUN mkdir /app
WORKDIR /app

COPY containers/wildcards-api/package.json /app
RUN npm install --quiet

# Copy App
COPY containers/wildcards-api /app

# Run app
CMD npm start