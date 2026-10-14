<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 2 ✿ Variables</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/2.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 02</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 02</div>
        <h1 class="r-h1">Variables con <c:out value="c:set y c:out"/></h1>
        <p class="r-lead">Guarda variables y muéstralas con JSTL.</p>
        <div class="r-panel">
            <div class="r-panel-h">♡ Tus datos personales</div>
            <div class="r-panel-b">
                <form action="ProcesarC.jsp" method="POST">
                    <div class="r-field">
                        <label class="r-label" for="nombre">Nombre</label>
                        <input type="text" class="r-input" id="nombre" name="nombre" placeholder="Tu nombre" required>
                    </div>
                    <div class="r-field">
                        <label class="r-label" for="apellido1">Primer apellido</label>
                        <input type="text" class="r-input" id="apellido1" name="apellido1" placeholder="Primer apellido" required>
                    </div>
                    <div class="r-field">
                        <label class="r-label" for="apellido2">Segundo apellido</label>
                        <input type="text" class="r-input" id="apellido2" name="apellido2" placeholder="Segundo apellido (opcional)">
                    </div>
                    <button type="submit" class="r-btn">Enviar</button>
                </form>
            </div>
        </div>
        <div class="r-panel">
            <div class="r-panel-h alt">❀ Información adicional</div>
            <div class="r-panel-b" style="text-align:center">
                <p>Descubre los ámbitos de <code class="r-code">c:set</code>: page, request, session y application.</p>
                <a href="set1.jsp" class="r-btn-ghost">Ver ejemplo</a>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
