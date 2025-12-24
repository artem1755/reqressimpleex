FROM maven:3.9.9-eclipse-temurin-21

WORKDIR /app

COPY . .

# Удаляем target, если есть
RUN rm -rf /app/target || true

# Сборка зависимостей без тестов
RUN mvn clean install -DskipTests

# По умолчанию запускаем тесты
CMD ["mvn", "test"]
