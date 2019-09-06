FROM mysql:5.7
COPY create_db.sql /sql/create_db.sql
COPY run_sql.sh /sql/run_sql.sh
