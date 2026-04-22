FROM nginx:alpine

# Clean up default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy application
COPY --chown=nginx:nginx . /usr/share/nginx/html

# --chown=nginx:nginx - what it does is it copies the application to the /usr/share/nginx/html directory and gives the ownership of the files to the nginx user
# it is used to avoid the permission denied error when the application is running


# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# # Copy SSL certificates
# COPY ssl/programmingprophet.site/fullchain.crt /etc/nginx/ssl/programmingprophet.site/fullchain.crt
# COPY ssl/programmingprophet.site/private.key /etc/nginx/ssl/programmingprophet.site/private.key

EXPOSE 80 