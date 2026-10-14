<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 2 ✿ Resultado</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/2.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 02</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · <a href="index.jsp">Práctica 02</a> · Resultado</div>
        <h1 class="r-h1">Resultado</h1>
        <p class="r-lead">Estos son los datos que compartiste:</p>
        <div class="r-panel">
            <div class="r-panel-h">♡ Tu tarjeta personal</div>
            <div class="r-panel-b">
                <p><strong>Nombre:</strong> <c:out value="${param.nombre}"/></p>
                <p><strong>Primer apellido:</strong> <c:out value="${param.apellido1}"/></p>
                <p><strong>Segundo apellido:</strong> <c:out value="${param.apellido2}"/></p>
                <p><a href="index.jsp" class="r-btn-ghost">← Volver</a></p>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
