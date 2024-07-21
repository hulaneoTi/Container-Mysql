FROM mysql:latest
RUN echo "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION;" > /docker-entrypoint-initdb.d/init.sql && \
    echo "FLUSH PRIVILEGES;" >> /docker-entrypoint-initdb.d/init.sql
