# Use the official Python image as base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies required by the application
RUN pip install --no-cache-dir Flask

# Specify the port number the container should expose
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
