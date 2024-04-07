FROM mysql:5.7
ADD mysqlcode.sh /docker-entrypoint-initdb.d/mysqlcode.sh
ADD ./db/laravelapp-db.sql /docker-entrypoint-initdb.d
RUN chmod -R 775 /docker-entrypoint-initdb.d