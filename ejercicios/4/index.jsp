<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 4 ✿ Decisiones</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/4.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 04</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 04</div>
        <h1 class="r-h1">Selección con <c:out value="c:choose"/></h1>
        <p class="r-lead">Cada lenguaje tiene su encanto. ¿Cuál es tu favorito? ✿</p>
        <div class="r-panel">
            <div class="r-panel-h">❀ Selección de lenguaje</div>
            <div class="r-panel-b">
                <form action="ProcesarC2.jsp" method="POST">
                    <div class="r-field">
                        <label class="r-label" for="lenguaje">Lenguaje de programación</label>
                        <select class="r-input" id="lenguaje" name="lenguaje" required>
                            <option value="" selected disabled>— Selecciona una opción —</option>
                            <option value="Java">Java</option>
                            <option value="C++">C++</option>
                            <option value="Perl">Perl</option>
                        </select>
                    </div>
                    <button type="submit" class="r-btn">Enviar</button>
                </form>
            </div>
        </div>
    </div>
    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
