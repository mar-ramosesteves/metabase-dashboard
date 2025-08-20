FROM metabase/metabase:latest
EXPOSE 3000
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=./metabase.db
CMD ["java", "-jar", "metabase.jar"]
