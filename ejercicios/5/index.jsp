<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 5 ✿ Excepciones</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/5.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 05</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 05</div>
        <h1 class="r-h1">Manejo de errores con <c:out value="c:catch"/></h1>
        <p class="r-lead">Captura excepciones sin interrumpir la página.</p>
        <c:catch var="error01">
            <c:import url="${param.url}" />
        </c:catch>
        <c:if test="${not empty error01}">
            <div class="r-alert-err">☁ <strong>Ups, algo pasó:</strong> <c:out value="${error01}"/></div>
        </c:if>
        <c:if test="${empty error01 and not empty param.url}">
            <div class="r-alert-ok">❀ <strong>¡Qué bien!</strong> Contenido cargado desde <c:out value="${param.url}"/></div>
        </c:if>
        <div class="r-panel">
            <div class="r-panel-h">♡ Casos de prueba</div>
            <div class="r-panel-b" style="text-align:center">
                <form method="GET" action="index.jsp" style="margin-bottom:.7rem">
                    <input type="hidden" name="url" value="https://httpbin.org/html">
                    <button type="submit" class="r-btn">✿ Probar URL válida</button>
                </form>
                <form method="GET" action="index.jsp" style="margin-bottom:.7rem">
                    <input type="hidden" name="url" value="https://sitio-inexistente-12345.com">
                    <button type="submit" class="r-btn-ghost">☁ Probar URL inválida</button>
                </form>
                <form method="GET" action="index.jsp">
                    <button type="submit" class="r-btn-ghost">❀ Sin URL</button>
                </form>
            </div>
        </div>
        <div class="r-panel">
            <div class="r-panel-h alt">✧ Qué esperar</div>
            <div class="r-panel-b">
                <p>✿ <strong>URL válida</strong> → contenido cargado con alegría</p>
                <p>☁ <strong>URL inválida</strong> → &lt;c:catch&gt; captura la excepción</p>
                <p>❀ <strong>Sin parámetro</strong> → no se ejecuta la importación</p>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
