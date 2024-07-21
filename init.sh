#!/bin/bash

# Cria o script SQL com variáveis de ambiente interpoladas
cat <<EOF > ./init.sql
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

# Subir os serviços do docker-compose
docker-compose up -d
