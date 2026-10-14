<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 6 ✿ Iteración</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/6.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 06</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 06</div>
        <h1 class="r-h1">Iteración con <c:out value="c:forEach"/></h1>
        <p class="r-lead">Recorre valores del 1 al 24, de dos en dos.</p>
        <div class="r-panel">
            <div class="r-panel-h">♡ Iteración del 1 al 24</div>
            <div class="r-panel-b">
                <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
                    <p>❀ <strong><c:out value="${hour}"/></strong>
                        <c:if test="${status.first}">
                            <span class="r-badge">estoy en el uno ✿</span>
                        </c:if>
                        <c:if test="${status.count == 5}">
                            <span class="r-badge">iteración número 5 ♡</span>
                        </c:if>
                    </p>
                </c:forEach>
            </div>
        </div>
        <div class="r-panel">
            <div class="r-panel-h alt">✧ Pequeña guía</div>
            <div class="r-panel-b">
                <p><code>c:forEach</code> puede pasear por arrays, listas, mapas, iteradores y resultados de <code>sql:query</code>.</p>
                <p>Con <code>varStatus</code> sabes si es la primera, la última, el índice y el conteo. ✿</p>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
