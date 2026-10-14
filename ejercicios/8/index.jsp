<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 8 ✿ Registros MySQL</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/8.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 08</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 08</div>
        <h1 class="r-h1">Registros con <c:out value="MySQL"/></h1>
        <p class="r-lead">Inserta un registro y consulta la lista.</p>
        <%@ include file="WEB-INF/jspf/conexion.jspf" %>
        <div class="r-panel">
            <div class="r-panel-h">♡ Nuevo registro</div>
            <div class="r-panel-b">
                <form action="Procesarinfo.jsp" method="POST">
                    <div class="r-field">
                        <label class="r-label" for="nombres">Nombres</label>
                        <input type="text" class="r-input" id="nombres" name="nombres" placeholder="Tu nombre" required>
                    </div>
                    <div class="r-field">
                        <label class="r-label" for="apellido1">Primer apellido</label>
                        <input type="text" class="r-input" id="apellido1" name="apellido1" placeholder="Primer apellido" required>
                    </div>
                    <div class="r-field">
                        <label class="r-label" for="apellido2">Segundo apellido</label>
                        <input type="text" class="r-input" id="apellido2" name="apellido2" placeholder="Segundo apellido" required>
                    </div>
                    <div class="r-field">
                        <label class="r-label" for="edad">Edad</label>
                        <input type="number" class="r-input" id="edad" name="edad" min="1" max="120" placeholder="18" required>
                    </div>
                    <button type="submit" class="r-btn">Guardar</button>
                </form>
            </div>
        </div>
        <div class="r-panel">
            <div class="r-panel-h alt">❀ Lista de registros</div>
            <div class="r-panel-b">
                <sql:query var="result" dataSource="${empleados}">
                    select * from empleados
                </sql:query>
                <div class="r-table-wrap">
                    <table class="r-table">
                        <thead><tr><th>Id</th><th>Nombre</th><th>Apellidos</th><th>Edad</th></tr></thead>
                        <tbody>
                            <c:forEach var="fila" items="${result.rows}">
                                <tr>
                                    <td><c:out value="${fila.id}"/></td>
                                    <td><c:out value="${fila.nombres}"/></td>
                                    <td><c:out value="${fila.apellido1}"/> <c:out value="${fila.apellido2}"/></td>
                                    <td><c:out value="${fila.edad}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
