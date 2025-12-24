FROM maven:3.9.0-openjdk-21

WORKDIR /app

COPY . .

CMD ["mvn", "clean", "test"]
