# Dockerfile to create a nodeclub image
FROM google/nodejs:0.10.33
MAINTAINER Carrotzpc

# Add files to the image
RUN mkdir -p /opt/nodejs
ADD . /opt/nodejs
WORKDIR /opt/nodejs

# Install the dependencies modules
RUN npm install

# Run make build
RUN make build

# Expose environment variables
ENV MONGO_CARROT_ADDR **LinkMe**
ENV MONGO_CARROT_PORT **LinkMe**
ENV MONGO_CARROT_NAME admin
ENV MONGO_CARROT_USER **ChangeMe**
ENV MONGO_CARROT_PASS **ChangeMe**

# Expose the container port
EXPOSE 5000

ENTRYPOINT ["node", "app.js"]
