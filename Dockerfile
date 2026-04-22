FROM nginx:alpine

# Copy application
COPY . /usr/share/nginx/html

# Clean up default nginx files
RUN rm /usr/share/nginx/html/index.html

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# # Copy SSL certificates
# COPY ssl/programmingprophet.site/fullchain.crt /etc/nginx/ssl/programmingprophet.site/fullchain.crt
# COPY ssl/programmingprophet.site/private.key /etc/nginx/ssl/programmingprophet.site/private.key

EXPOSE 80 