FROM openjdk:11-jre-slim
WORKDIR /app
RUN apt-get update && apt-get install -y wget
RUN wget https://downloads.metabase.com/v0.49.0/metabase.jar
EXPOSE 3000
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/app/metabase.db
ENV MB_JETTY_PORT=3000
ENV MB_JETTY_HOST=0.0.0.0
ENV JAVA_OPTS="-Xmx512m -Xms256m"
CMD ["java", "-Xmx512m", "-Xms256m", "-jar", "metabase.jar"]
