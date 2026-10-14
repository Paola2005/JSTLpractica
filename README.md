# JSTLpractica - Guía de Prácticas JSTL

Proyecto web Java (JSP + JSTL) con 8 ejercicios progresivos para aprender JSTL (JSP Standard Tag Library).

## Requisitos

- **JDK 8+** (probado con JDK 8/11/17)
- **Apache Tomcat 9.x** (para Tomcat 10+ ver nota al final)
- **MySQL / MariaDB / XAMPP** (para el Ejercicio 8)
- **Visual Studio Code** con extensiones recomendadas:
  - "Community Server Connectors" o "Tomcat for Java"
  - "Java Extension Pack"

## Estructura del Proyecto

```
JSTLpractica/
├── css/estilo.css
├── img/ (placeholders: javalog2.png, persona.png, 2.png, 3.png, 4.png, 5.png, 6.png, 7.png, 8.png)
├── js/
├── META-INF/context.xml
├── WEB-INF/
│   ├── web.xml
│   └── lib/ (jstl.jar, mysql-connector-java.jar)
├── ejercicios/
│   ├── 1/ (Ejercicio 1 vive como modal en index.jsp raíz)
│   ├── 2/ index.jsp, ProcesarC.jsp, set1.jsp
│   ├── 3/ index.jsp, Procesarif.jsp
│   ├── 4/ index.jsp, ProcesarC2.jsp
│   ├── 5/ index.jsp
│   ├── 6/ index.jsp
│   ├── 7/ index.jsp, ResultTokens.jsp
│   └── 8/ WEB-INF/jspf/conexion.jspf, index.jsp, Procesarinfo.jsp
├── index.jsp
├── database.sql
└── README.md
```

## Configuración de Librerías (JARs)

### Opción A: Descarga automática (si hay internet)
Los JARs se descargan a `WEB-INF/lib/`:
- `javax.servlet.jsp.jstl-1.2.1.jar` (JSTL 1.2.1)
- `mysql-connector-java-5.1.12-bin.jar` (MySQL Connector/J 5.1.12)

### Opción B: Descarga manual (si no hay internet)
Coloca los siguientes JARs en **ambas** ubicaciones:

1. **En el proyecto:** `JSTLpractica/WEB-INF/lib/`
2. **En Tomcat:** `$CATALINA_HOME/lib/` (ej: `C:\xampp\tomcat\lib\`)

**Enlaces de descarga (java2s.com):**
- JSTL 1.2.1: https://www.java2s.com/Code/Jar/j/Downloadjavaxservletjspjstl121jar.htm
- MySQL Connector/J 5.1.12: https://www.java2s.com/Code/Jar/m/Downloadmysqlconnectorjava5112binjar.htm

> **Nota:** Si los JARs solo están en `WEB-INF/lib` del proyecto, pueden surgir conflictos de ClassLoader. Lo ideal es tenerlos también en `tomcat/lib/`.

## Base de Datos (Ejercicio 8)

1. Inicia MySQL/MariaDB (XAMPP: inicia MySQL desde el panel de control)
2. Ejecuta el script `database.sql`:
   ```bash
   mysql -u root -p < database.sql
   ```
   O desde MySQL Workbench / phpMyAdmin: importa el archivo `database.sql`.
3. Verifica que la base de datos `empleados` y la tabla `empleados` existen con 2 registros de prueba.

## Despliegue en Tomcat 9

### Opción 1: Copia directa a webapps
```bash
# Copia la carpeta completa al directorio webapps de Tomcat
cp -r JSTLpractica "C:\xampp\tomcat\webapps\"
```
Inicia Tomcat y accede a: http://localhost:8080/JSTLpractica/

### Opción 2: Configuración en VS Code (recomendado)
1. Instala la extensión "Tomcat for Java" o "Community Server Connectors"
2. Configura el servidor Tomcat 9 en VS Code (apunta a `C:\xampp\tomcat`)
3. Click derecho en la carpeta `JSTLpractica` → "Run on Server" / "Deploy"
4. Accede a http://localhost:8080/JSTLpractica/

## Ejercicios Incluidos

| Ejercicio | Tema | Archivos Principales |
|-----------|------|---------------------|
| 1 | Primer ejemplo (modal) | `index.jsp` (raíz) |
| 2 | `<c:set>` y `<c:out>` | `ejercicios/2/` |
| 3 | `<c:if>` y `<c:redirect>` | `ejercicios/3/` |
| 4 | `<c:choose>` / `<c:when>` / `<c:otherwise>` | `ejercicios/4/` |
| 5 | `<c:catch>` | `ejercicios/5/index.jsp` |
| 6 | `<c:forEach>` | `ejercicios/6/index.jsp` |
| 7 | `<c:forTokens>` | `ejercicios/7/` |
| 8 | SQL con MySQL (`<sql:query>`, `<sql:update>`) | `ejercicios/8/` |

## Imágenes Placeholder

Las imágenes en `img/` son **placeholders generados automáticamente** (PNGs mínimos válidos). Debes **reemplazarlos** por tus imágenes reales:
- `javalog2.png` - Logo Java (400px ancho, usado en header y favicon)
- `persona.png` - Imagen de persona (Ejercicio 2)
- `2.png` ... `8.png` - Favicons para cada ejercicio

## Notas Importantes

### Tomcat 10+ (Jakarta EE 9+)
Si usas **Tomcat 10 o superior**, los paquetes cambiaron de `javax.*` a `jakarta.*`. Deberás:
1. Usar JSTL 3.0+ (jakarta.tags.core, etc.)
2. Cambiar URIs de taglib: `http://java.sun.com/jsp/jstl/core` → `jakarta.tags.core`
3. Cambiar `javax.servlet.jsp.jstl` → `jakarta.servlet.jsp.jstl`
4. MySQL Connector/J 8.0+ (compatible con Jakarta)

Este proyecto está diseñado para **Tomcat 9 (Java EE 8)** con `javax.*`.

### Correcciones Aplicadas vs Guía Original
- Cierre correcto de todas las etiquetas HTML (`</option>`, `</div>`, etc.)
- Rutas relativas correctas en ejercicios (`../../css/estilo.css`, etc.)
- Uso de `<sql:param>` con placeholders `?` (prevención SQL Injection)
- Eliminación de comillas tipográficas en SQL
- Validación `not empty param.nombres` antes de INSERT
- Uso de `pageContext.setAttribute` en lugar de declaraciones `<%! %>` en Ejercicio 5
- Bootstrap 5.1.0 via CDN (cdnjs)
- Taglibs declaradas con URIs clásicas de Sun

## URLs de Prueba

- **Página principal:** http://localhost:8080/JSTLpractica/
- **Ejercicio 2:** http://localhost:8080/JSTLpractica/ejercicios/2/index.jsp
- **Ejercicio 8:** http://localhost:8080/JSTLpractica/ejercicios/8/index.jsp

## Licencia

Uso educativo. Desarrollado como guía de prácticas JSTL.