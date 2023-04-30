FROM clojure:lein

WORKDIR /app

COPY . /app

EXPOSE 3000

CMD lein uberjar && \
    java -jar /app/target/etlp-mapper-0.1.0-SNAPSHOT-standalone.jar
