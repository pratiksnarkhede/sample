# Use an official Apache web server image as the base image
FROM httpd:2.4

# Set the working directory inside the container
WORKDIR /usr/local/apache2/htdocs

# Copy the contents of your current directory into the container at the working directory
COPY . .

# Expose port 80 to allow incoming web requests
EXPOSE 80

# Start the Apache web server when the container is run
CMD ["httpd-foreground"]
