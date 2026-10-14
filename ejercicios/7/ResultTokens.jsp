<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 7 ✿ Resultado</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/7.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 07</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · <a href="index.jsp">Práctica 07</a> · Resultado</div>
        <h1 class="r-h1">Resultado de tokens</h1>
        <p class="r-lead">Partes obtenidas del texto:</p>
        <div class="r-panel">
            <div class="r-panel-h">♡ Cada pedacito</div>
            <div class="r-panel-b">
                <c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken">
                    <p>❀ <c:out value="${myToken}"/></p>
                </c:forTokens>
                <p><a href="index.jsp" class="r-btn-ghost">← Separar otra frase</a></p>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
