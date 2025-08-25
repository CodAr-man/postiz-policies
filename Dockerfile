# Use official nginx base image
FROM nginx:alpine

# Copy static files (your HTML pages) into nginx html folder
COPY . /usr/share/nginx/html

# Copy custom nginx config to enable extensionless .html URLs
COPY nginx.conf /etc/nginx/conf.d/default.conf
