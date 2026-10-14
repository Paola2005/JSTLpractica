<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 7 ✿ Tokens</title>
    <link rel="stylesheet" href="../../css/estilo.css?v=rosa1">
    <link rel="icon" href="../../img/7.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="../../index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav"><a href="../../index.jsp" class="r-link">← Inicio</a><span class="r-pill">Práctica 07</span></nav>
    </header>
    <div class="r-wrap">
        <div class="r-crumb"><a href="../../index.jsp">Inicio</a> · Práctica 07</div>
        <h1 class="r-h1">Tokenización con <c:out value="c:forTokens"/></h1>
        <p class="r-lead">Divide un texto en partes usando un delimitador.</p>
        <div class="r-panel">
            <div class="r-panel-h">❀ Separar texto</div>
            <div class="r-panel-b">
                <form action="ResultTokens.jsp" method="POST">
                    <div class="r-field">
                        <label class="r-label" for="delimText">Tu frase</label>
                        <input type="text" class="r-input" id="delimText" name="delimText" placeholder="ej: rosa,peonia,tulipán" required>
                    </div>
                    <div class="r-field">
                        <label class="r-label" for="delim">Delimitador</label>
                        <input type="text" class="r-input" id="delim" name="delim" placeholder="ej: ," maxlength="1" required>
                    </div>
                    <button type="submit" class="r-btn">Separar</button>
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
