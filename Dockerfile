# Dockerfile
# Use Ubuntu as the base image
FROM ubuntu

# to set working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python and dependencies
RUN apt-get update && \
    apt-get install -y python3

# Run app.py when the container launches
CMD ["python3", "app.py"]
