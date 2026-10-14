<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 3 ✿ Validación</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/3.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 03</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 03</div>
        <h1 class="r-h1">Validación con <c:out value="c:if y c:redirect"/></h1>
        <p class="r-lead">Cuidamos que ningún campo importante quede vacío. ✿</p>
        <c:if test="${not empty param.error}">
            <div class="r-alert-err">✿ <strong>Revisa esto:</strong> <c:out value="${param.error}"/></div>
        </c:if>
        <div class="r-panel">
            <div class="r-panel-h">♡ Formulario</div>
            <div class="r-panel-b">
                <form action="Procesarif.jsp" method="POST">
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
                        <input type="text" class="r-input" id="apellido2" name="apellido2" placeholder="Opcional">
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
