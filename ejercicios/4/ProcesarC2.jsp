<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 4 ✿ Mensaje</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/4.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 04</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · <a href="index.jsp">Práctica 04</a> · Mensaje</div>
        <div class="r-panel">
            <div class="r-panel-h">♡ Tu mensaje especial</div>
            <div class="r-panel-b" style="text-align:center">
                <c:choose>
                    <c:when test="${param.lenguaje == 'Java'}">
                        <p style="font-size:1.2rem">✿ El rey de los lenguajes orientados a objetos ✿</p>
                    </c:when>
                    <c:when test="${param.lenguaje == 'C++'}">
                        <p style="font-size:1.2rem">❀ Ideal para aprender con paciencia ❀</p>
                    </c:when>
                    <c:when test="${param.lenguaje == 'Perl'}">
                        <p style="font-size:1.2rem">♡ Un lenguaje de scripting muy potente ♡</p>
                    </c:when>
                    <c:otherwise>
                        <p style="font-size:1.2rem">☁ Aún no elegiste ninguno, vuelve a intentarlo ☁</p>
                    </c:otherwise>
                </c:choose>
                <p><span class="r-tag">Elegiste: <c:out value="${param.lenguaje}"/></span></p>
                <p><a href="index.jsp" class="r-btn-ghost">← Elegir otro</a></p>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
