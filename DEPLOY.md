# Despliegue en Clever Cloud (aplicación Docker + MySQL)

Proyecto: JSP + JSTL (`javax.*`, Tomcat 9) sin Maven/Gradle. La imagen se basa en
`tomcat:9.0-jdk17-temurin` y sirve la app en `/` (ROOT) en el puerto 8080.

## 1. Requisitos previos

- Cuenta en Clever Cloud y [Clever Tools](https://www.clever.cloud/developers/doc/manage/cli/install) instalado.
- Este repo con `Dockerfile` en la raíz.
- **Importante:** las credenciales que estaban fijas en `ejercicios/8/WEB-INF/jspf/conexion.jspf`
  se eliminaron. Ahora se leen de las variables `MYSQL_ADDON_*`. **Rota/revoca las
  credenciales antiguas en la consola de Clever Cloud**, porque quedaron expuestas en el historial.

## 2. Login

```bash
clever login
```

## 3. Crear la aplicación Docker

Desde la raíz del proyecto:

```bash
clever create --type docker miapp
# Equivalente: clever create -t docker miapp
```

## 4. Crear y vincular la base de datos MySQL

```bash
# Ver proveedores/planes disponibles (el proveedor MySQL se llama mysql-addon)
clever addon providers show mysql-addon

# Crear el add-on (plan S de ejemplo; ajusta plan y región)
clever addon create mysql-addon jstlpractica-mysql --plan S --region par

# Vincularlo a la app (inyecta MYSQL_ADDON_HOST/PORT/DB/USER/PASSWORD)
clever service link-addon jstlpractica-mysql
```

Comprueba las variables inyectadas con:

```bash
clever env
```

## 5. Cargar el esquema SQL en el add-on

La base del add-on ya existe (no crearla). Usa las copias de `db/` (sin `CREATE DATABASE` ni `USE`):

```bash
# Opción A: script (lee las mismas MYSQL_ADDON_* ya inyectadas)
bash db/cargar_db.sh

# Opción B: manual, con valores del add-on (verlos con: clever addon env <ADDON_ID>)
mysql -h"$MYSQL_ADDON_HOST" -P"$MYSQL_ADDON_PORT" -u"$MYSQL_ADDON_USER" -p"$MYSQL_ADDON_PASSWORD" \
  "$MYSQL_ADDON_DB" < db/01-schema.sql
```

El original `database.sql` se conserva intacto para desarrollo local con XAMPP.

## 6. Desplegar

```bash
clever deploy
# Si tu remoto git se llama distinto, empuja a la URL de despliegue que muestra la consola:
# git push clever master  (o main, según tu rama)
```

La app escucha en el puerto **8080**, que es el puerto por defecto de Clever Cloud para Docker.
**No definas `CC_DOCKER_EXPOSED_HTTP_PORT`** salvo que cambies el puerto en el Dockerfile; solo se usa si el puerto difiere de 8080:

```bash
# Solo si cambias de puerto:
# clever env set CC_DOCKER_EXPOSED_HTTP_PORT 8080
```

## 7. Ver logs

```bash
clever logs
```

## 8. Prueba local (requiere Docker + Docker Compose)

```bash
docker compose up --build
# App: http://localhost:8080/
# MySQL local: localhost:3306 (db empleados, user root, password root)
```

Carga el esquema en el MySQL local con:

```bash
MYSQL_ADDON_HOST=localhost MYSQL_ADDON_PORT=3306 MYSQL_ADDON_DB=empleados \
MYSQL_ADDON_USER=root MYSQL_ADDON_PASSWORD=root bash db/cargar_db.sh
```

## Notas

- Conexiones: las etiquetas JSTL `<sql:*>` abren y cierran la conexión por petición; no hay pool
  manual. Suficiente para los planes gratuitos (pocas conexiones simultáneas).
- Sin `try-with-resources` que añadir: no hay código `.java` (proyecto JSP/JSTL puro).
- Archivos subidos: la app **no guarda ficheros en disco** (formularios solo a MySQL), así que el
  sistema de ficheros efímero del contenedor no es un problema.
- Driver: `WEB-INF/lib` traía `mysql-connector-java-5.1.12` (solo clase `com.mysql.jdbc.Driver`),
  incompatible con el `com.mysql.cj.jdbc.Driver` que usa la app. El `Dockerfile` descarga
  `mysql-connector-j-8.0.33.jar` dentro de la imagen y conserva el JAR antiguo.
