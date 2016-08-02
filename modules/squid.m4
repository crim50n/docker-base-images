#Install squid
RUN apt-get install squid -y \
  && sed -i -e 's/http_port 3128/http_port 80/g' /etc/squid3/squid.conf

# Add squid to supervisord config
COPY files/supervisord/squid.conf /etc/supervisor/conf.d/squid.conf
