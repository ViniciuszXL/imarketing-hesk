FROM nginx

# Volumes #
COPY /default.conf /etc/nginx/conf.d/default.conf
COPY /web /var/www

# Commands #
CMD ["nginx", "-g", "daemon off;"]