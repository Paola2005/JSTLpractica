FROM tomcat:9.0-jdk17-temurin

# Codificacion y zona horaria exigidas
ENV JAVA_OPTS="-Dfile.encoding=UTF-8 -Duser.timezone=America/Bogota"

# Defaults locales (Clever Cloud los sobreescribe en produccion)
ENV MYSQL_ADDON_HOST=localhost \
    MYSQL_ADDON_PORT=3306 \
    MYSQL_ADDON_DB=empleados \
    MYSQL_ADDON_USER=root \
    MYSQL_ADDON_PASSWORD=""

# Herramienta para descargar el driver MySQL 8.x
RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

# Borrar webapps por defecto y preparar ROOT
RUN rm -rf /usr/local/tomcat/webapps/* \
    && mkdir -p /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

WORKDIR /usr/local/tomcat/webapps/ROOT

# Copiar la carpeta web del proyecto (el .dockerignore excluye Dockerfile, compose, db/, .git...)
COPY . .

# Por si el contexto trajo archivos de despliegue, no deben quedar servidos
RUN rm -rf db Dockerfile docker-compose.yml DEPLOY.md .git .github \
    && mkdir -p WEB-INF/classes

# Driver MySQL 8.x (el JAR 5.1.12 del repo no trae com.mysql.cj.jdbc.Driver).
# Se conserva el JAR antiguo y se anade este; no hay conflicto (distinta clase).
RUN curl -fsSL -o WEB-INF/lib/mysql-connector-j-8.0.33.jar \
      https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar \
    && ls -l WEB-INF/lib/

# Compilar .java si los hubiera (hoy el proyecto es solo JSP/JSTL: no hay .java).
# Classpath: librerias de Tomcat + WEB-INF/lib. UTF-8 obligatorio.
RUN if [ -n "$(find . -name '*.java' -print -quit)" ]; then \
      mkdir -p WEB-INF/classes && \
      javac -encoding UTF-8 -cp "/usr/local/tomcat/lib/*:WEB-INF/lib/*" \
        -d WEB-INF/classes $(find . -name '*.java'); \
    else \
      echo "Sin archivos .java: se omite javac (proyecto JSP/JSTL puro)."; \
    fi

EXPOSE 8080

CMD ["catalina.sh", "run"]
