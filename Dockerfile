FROM metabase/metabase:latest
EXPOSE 3000
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=./metabase.db
ENV MB_JETTY_PORT=3000
ENV MB_JETTY_HOST=0.0.0.0
CMD ["java", "-jar", "metabase.jar"]
