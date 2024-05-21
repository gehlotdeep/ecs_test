# Use an official Python runtime as a parent image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html/

# Copy the app directory contents into the container at usr/share/nginx/html/
COPY . .

# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

COPY nginx.conf /home/ubuntu/
