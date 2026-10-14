<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 8 ✿ Guardado</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/8.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 08</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · <a href="index.jsp">Práctica 08</a> · Guardado</div>
        <%@ include file="WEB-INF/jspf/conexion.jspf" %>
        <c:if test="${not empty param.nombres}">
            <c:set var="nombres" value="${param.nombres}"/>
            <c:set var="apellido1" value="${param.apellido1}"/>
            <c:set var="apellido2" value="${param.apellido2}"/>
            <c:set var="edad" value="${param.edad}"/>
            <sql:update dataSource="${empleados}">
                INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
                <sql:param value="${nombres}"/>
                <sql:param value="${apellido1}"/>
                <sql:param value="${apellido2}"/>
                <sql:param value="${edad}"/>
            </sql:update>
            <div class="r-alert-ok">❀ <strong>Correcto.</strong> El registro se guardó.</div>
        </c:if>
        <sql:query var="result" dataSource="${empleados}">
            select * from empleados
        </sql:query>
        <div class="r-panel">
            <div class="r-panel-h">♡ Lista completa</div>
            <div class="r-panel-b">
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
                <p style="margin-top:1rem"><a href="index.jsp" class="r-btn-ghost">← Volver</a></p>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
