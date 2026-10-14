<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 2 ✿ Scopes</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/2.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 02</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · <a href="index.jsp">Práctica 02</a> · Scopes</div>
        <h1 class="r-h1">Los ámbitos de <c:out value="c:set"/></h1>
        <p class="r-lead">Cada variable vive en un rinconcito distinto. ✿</p>
        <div class="r-panel">
            <div class="r-panel-h">♡ var · value · scope</div>
            <div class="r-panel-b">
                <c:set var="varPage" value="Valor en ámbito page" scope="page"/>
                <c:set var="varRequest" value="Valor en ámbito request" scope="request"/>
                <c:set var="varSession" value="Valor en ámbito session" scope="session"/>
                <c:set var="varApplication" value="Valor en ámbito application" scope="application"/>
                <p><strong>page:</strong> <c:out value="${pageScope.varPage}"/></p>
                <p><strong>request:</strong> <c:out value="${requestScope.varRequest}"/></p>
                <p><strong>session:</strong> <c:out value="${sessionScope.varSession}"/></p>
                <p><strong>application:</strong> <c:out value="${applicationScope.varApplication}"/></p>
            </div>
        </div>
        <div class="r-panel">
            <div class="r-panel-h alt">❀ target · property</div>
            <div class="r-panel-b">
                <c:set target="${pageScope}" property="mapaPersona" value="${{'nombre': 'Juan', 'apellido': 'Perez', 'edad': 30}}"/>
                <c:set target="${pageScope.mapaPersona}" property="ciudad" value="Madrid"/>
                <p><strong>Nombre:</strong> <c:out value="${pageScope.mapaPersona.nombre}"/></p>
                <p><strong>Apellido:</strong> <c:out value="${pageScope.mapaPersona.apellido}"/></p>
                <p><strong>Edad:</strong> <c:out value="${pageScope.mapaPersona.edad}"/></p>
                <p><strong>Ciudad:</strong> <c:out value="${pageScope.mapaPersona.ciudad}"/></p>
            </div>
        </div>
        <div class="r-panel">
            <div class="r-panel-h">✧ Atributos de c:set</div>
            <div class="r-panel-b">
                <div class="r-table-wrap">
                    <table class="r-table">
                        <thead><tr><th>Atributo</th><th>Descripción</th><th>Requerido</th></tr></thead>
                        <tbody>
                            <tr><td><code>value</code></td><td>Valor a asignar.</td><td>Sí (si no hay target)</td></tr>
                            <tr><td><code>target</code></td><td>Objeto JavaBean o Map.</td><td>No</td></tr>
                            <tr><td><code>property</code></td><td>Propiedad del target.</td><td>Sí (si hay target)</td></tr>
                            <tr><td><code>var</code></td><td>Nombre de la variable.</td><td>Sí (si no hay target)</td></tr>
                            <tr><td><code>scope</code></td><td>page, request, session, application.</td><td>No</td></tr>
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
