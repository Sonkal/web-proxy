# Set nginx base image
FROM nginx

# Copy custom configuration file from the current directory
COPY conf/nginx.conf /etc/nginx/nginx.conf
