FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your HTML files into nginx html directory
COPY privacy.html /usr/share/nginx/html/privacy/index.html
COPY terms-of-service.html /usr/share/nginx/html/tos/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
