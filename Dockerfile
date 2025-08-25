# Use official lightweight Nginx image
FROM nginx:alpine

# Copy custom nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your HTML files into nginx root
COPY privacy.html /usr/share/nginx/html/privacy.html
COPY tos.html /usr/share/nginx/html/tos.html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
