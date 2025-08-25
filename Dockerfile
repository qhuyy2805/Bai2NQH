# ===========================
# Stage 1: Build WAR với Maven
# ===========================
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Thư mục làm việc trong container
WORKDIR /app

# Copy pom.xml và source code
COPY pom.xml .
COPY src ./src

# Build project, bỏ qua test để nhanh hơn
RUN mvn clean package -DskipTests

# ===========================
# Stage 2: Chạy Tomcat
# ===========================
FROM tomcat:10.1.44-jdk17-temurin

# Xóa ROOT app mặc định
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR từ stage build vào Tomcat
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
