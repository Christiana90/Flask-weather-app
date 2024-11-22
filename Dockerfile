
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirement.txt

# Copy and set environment variables from .env
#COPY .env .env

# Expose the port the app runs on
EXPOSE 5000

# Define environment variables for Flask
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the application
CMD ["flask", "run"]
