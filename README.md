# Ngnix_Dockerfile
Base Image: We use the nginx:alpine image as the base. This image is lightweight and contains the latest stable version of Nginx.
Custom Configuration (Optional): This section allows you to copy your own Nginx configuration file (my.conf) into the container. The COPY instruction copies the file from your local machine to the specified location within the container (/etc/nginx/conf.d/).
Expose Port: The EXPOSE instruction exposes port 80 (the default Nginx port) from the container. This allows external applications to access the Nginx server running within the container.
Start Nginx: The CMD instruction specifies the command to run when the container starts. Here, we use nginx -g daemon off;. This starts Nginx in the foreground, meaning the container won't exit even after the main process finishes. The ; at the end is necessary to prevent Docker from interpreting the following line as an argument to nginx.
To run the container in the background (recommended for production), replace CMD ["nginx", "-g", "daemon off;"] with CMD ["nginx"].
