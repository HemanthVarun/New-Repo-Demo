# Use an official Ubuntu image as the base
FROM ubuntu:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Expose the port
EXPOSE 80

# Run Nginx when the container starts
CMD ["nginx", "-t"]
