FROM ubuntu:latest

# Install MongoDB
RUN apt-get update && apt-get install -y mongodb

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Expose the default MongoDB port
EXPOSE 27017

# Set the MongoDB daemon as the container's entrypoint
ENTRYPOINT ["usr/bin/mongod"]
