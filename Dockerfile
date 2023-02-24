# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory
WORKDIR /var/www/public

# Copy index page into the container
COPY index.html /var/www/public

# Copy custom configuration file into the container
COPY nginx.conf /etc/nginx/sites-enabled/nginx.conf

# Restarting nginx
RUN sudo service nginx restart

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon on;"] && tail -f /dev/null