# Use the official lightweight nginx image
FROM nginx:alpine

# Copy your custom configuration file (optional)
# COPY my.conf /etc/nginx/conf.d/

# Expose the default Nginx port (80)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
