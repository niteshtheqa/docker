# Use the official httpd (Apache HTTP Server) image as the base image
FROM httpd:latest

# (Optional) Set environment variables if needed
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_DOCUMENT_ROOT /var/www/html

# (Optional) Copy your custom configuration files if needed
COPY ./index.html /usr/local/apache2/htdocs/
CMD echo "Welcome to Devops World!!!" > mypage.html

# (Optional) Copy your web content (HTML, CSS, JavaScript, etc.) into the container
# COPY ./my-web-content/ /var/www/html/

# (Optional) Expose port 80 to allow incoming HTTP traffic
EXPOSE 80/tcp
