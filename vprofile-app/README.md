# VProfile Webapp
###
## Overview

VProfile is a Java web application built as a WAR package using Spring MVC, Spring Security, Spring Data JPA, Hibernate, RabbitMQ, Elasticsearch, and MySQL.

The project provides user profile management, authentication, search integration, messaging support, and file upload features through a JSP-based web interface.

## Key Features

- Spring MVC web application with JSP views
- Spring Security authentication and authorization
- MySQL database persistence via Spring Data JPA and Hibernate
- RabbitMQ messaging integration
- Elasticsearch client support for search-related features
- Memcached configuration for caching support
- File upload support with multipart limits configured

## Repository Structure

- `src/main/java/` – Java source code
- `src/main/resources/` – application configuration and SQL scripts
- `src/main/webapp/` – JSP views, static resources, and web configuration
- `src/test/java/` – unit and integration tests
- `Docker-files/` – Docker artifacts for app, db, and web deployment
- `.github/workflows/ci.yml` – CI pipeline definition

## Prerequisites

- Java 17 JDK
- Maven 3.6+ or compatible
- MySQL server
- RabbitMQ server
- Elasticsearch 7.x compatible with the configured client version
- A servlet container or Java EE application server to deploy the generated WAR

## Configuration

The application uses `src/main/resources/application.properties` for runtime settings.

Important configuration values include:

- `jdbc.url`, `jdbc.username`, `jdbc.password` – MySQL connection details
- `rabbitmq.address`, `rabbitmq.port`, `rabbitmq.username`, `rabbitmq.password` – RabbitMQ connection
- `elasticsearch.host`, `elasticsearch.port`, `elasticsearch.cluster` – Elasticsearch connection
- `memcached.active.host`, `memcached.active.port` – Memcached configuration

### Default local settings

- MySQL host: `vprodb:3306`
- MySQL database: `accounts`
- MySQL user: `root`
- MySQL password: `REDACTED`
- RabbitMQ host: `vpromq01`
- RabbitMQ port: `5672`
- Elasticsearch host: `localhost`
- Elasticsearch port: `9300`

> Update these values to match your deployment environment before running the application.

## Build

From the project root:

```bash
mvn clean package
```

The build produces a WAR file under `target/`.

## Run

### Deploy to a servlet container

Deploy the generated `target/vprofile.war` to your preferred servlet container such as Apache Tomcat, Jetty, or WildFly.

### Run with Maven Jetty plugin

If the project includes the Jetty Maven plugin, you can run:

```bash
mvn jetty:run
```

Then open the application in your browser at the Jetty URL shown in the console.

## Tests

Run unit tests with:

```bash
mvn test
```

## Docker Notes

The repository contains Docker-related files under `Docker-files/` for application, database, and web container deployment.

Review the Dockerfiles and related environment definitions before building containers.

## Useful Files

- `src/main/webapp/WEB-INF/web.xml` – web application configuration
- `src/main/resources/application.properties` – runtime property configuration
- `src/main/resources/accountsdb.sql` – database script for account data

## Troubleshooting

- Ensure all external services are reachable from the deployment environment.
- Confirm MySQL and RabbitMQ credentials match the values in `application.properties`.
- If JSP pages fail to render, verify the servlet container is configured for Jakarta Servlet 6/JSP support.

## License

This repository does not include a license file. Add one if you want to publish or share the project publicly.

Just test