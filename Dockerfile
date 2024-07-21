FROM mysql:latest

RUN mkdir -p /docker-entrypoint-initdb.d/ && \
    echo '#!/bin/bash' > /docker-entrypoint-initdb.d/init.sh && \
    echo 'sleep 10' >> /docker-entrypoint-initdb.d/init.sh && \
    echo 'cat <<EOF > /docker-entrypoint-initdb.d/init.sql' >> /docker-entrypoint-initdb.d/init.sh && \
    echo "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION;" >> /docker-entrypoint-initdb.d/init.sh && \
    echo 'FLUSH PRIVILEGES;' >> /docker-entrypoint-initdb.d/init.sh && \
    echo 'EOF' >> /docker-entrypoint-initdb.d/init.sh && \
    chmod +x /docker-entrypoint-initdb.d/init.sh

RUN chmod 755 /docker-entrypoint-initdb.d/init.sh
