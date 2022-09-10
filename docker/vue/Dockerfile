FROM nginx:1.17.1
RUN rm /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/nginx.conf
COPY dist/ /var/www/html/dist/
