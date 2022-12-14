FROM nginx:1.23.2-alpine

LABEL maintainer="Sawan Mehta <sawan.mehta94@gmail.com>"

COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY conf/module.conf /etc/nginx/module.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/proxy.conf /etc/nginx/proxy.conf
# COPY run.sh /bin/

EXPOSE 80

# CMD ["/bin/run.sh"]