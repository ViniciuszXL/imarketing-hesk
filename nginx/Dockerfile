FROM nginx

COPY /root/imarketing-hesk/nginx/default.conf:/etc/nginx/conf.d/default.conf
COPY /root/imarketing-hesk/web:/var/www

RUN chmod -R 777 /tmp
RUN chmod -R 777 /var/www
RUN chmod -R 777 /var/www/admin
RUN chmod -R 777 /var/www/attachments
RUN chmod -R 777 /var/www/cache
RUN chmod -R 777 /var/www/cron
RUN chmod -R 777 /var/www/css
RUN chmod -R 777 /var/www/docs
RUN chmod -R 777 /var/www/fonts
RUN chmod -R 777 /var/www/html
RUN chmod -R 777 /var/www/img
RUN chmod -R 777 /var/www/inc
RUN chmod -R 777 /var/www/js
RUN chmod -R 777 /var/www/language
RUN chmod -R 777 /var/www/theme

EXPOSE 80