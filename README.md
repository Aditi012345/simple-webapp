# Simple Web Application

A Java web application demonstrating automated deployment using Jenkins CI/CD pipeline.

## Technologies Used

- Java 11
- Maven
- JSP/Servlet
- Apache Tomcat
- Jenkins

## Project Structure

```
simple-webapp/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/example/HelloServlet.java
│       └── webapp/
│           ├── WEB-INF/web.xml
│           ├── index.jsp
│           └── about.jsp
├── pom.xml
└── README.md
```

## Build Instructions

```bash
mvn clean package
```

## Deployment

This application is configured for automated deployment via Jenkins using the "Deploy to container" plugin.

## Access URLs

- Home: http://localhost:8080/simple-webapp/
- Servlet: http://localhost:8080/simple-webapp/hello
- About: http://localhost:8080/simple-webapp/about.jsp
