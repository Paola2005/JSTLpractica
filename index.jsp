<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSTL Lab ✿ Prácticas JSTL</title>
    <link rel="stylesheet" href="css/estilo.css?v=rosa1">
    <link rel="icon" href="img/javalog2.png" type="image/png">
</head>
<body class="rosa">
    <header class="r-top">
        <a href="index.jsp" class="r-brand"><span class="r-flower">✿</span> JSTL Lab</a>
        <nav class="r-nav">
            <span class="r-pill">8 prácticas · JSP + JSTL</span>
        </nav>
    </header>
    <div class="r-wrap">
        <section class="r-hero">
            <div class="r-kicker">Guía práctica de JSTL</div>
            <h1 class="r-title">Aprende JSTL paso a paso</h1>
            <p class="r-sub">Ocho prácticas progresivas para dominar la JSP Standard Tag Library, paso a paso y sin estrés.</p>
            <div class="r-divider">✿ ✿ ✿</div>
            <div class="r-tags">
                <span class="r-tag">JSTL Core</span>
                <span class="r-tag">JSTL SQL</span>
                <span class="r-tag">MySQL</span>
            </div>
        </section>

        <div class="r-grid">
            <a href="#ej1" class="r-card">
                <span class="r-num">01</span>
                <div class="r-icon">✧</div>
                <h3>Primer ejemplo</h3>
                <p><code>c:out</code> y expresiones EL</p>
            </a>
            <a href="ejercicios/2/index.jsp" class="r-card">
                <span class="r-num">02</span>
                <div class="r-icon">♡</div>
                <h3>Variables</h3>
                <p><code>c:set</code> y <code>c:out</code></p>
            </a>
            <a href="ejercicios/3/index.jsp" class="r-card">
                <span class="r-num">03</span>
                <div class="r-icon">❀</div>
                <h3>Validación</h3>
                <p><code>c:if</code> y <code>c:redirect</code></p>
            </a>
            <a href="ejercicios/4/index.jsp" class="r-card">
                <span class="r-num">04</span>
                <div class="r-icon">✿</div>
                <h3>Decisiones</h3>
                <p><code>c:choose</code> · <code>c:when</code></p>
            </a>
            <a href="ejercicios/5/index.jsp" class="r-card">
                <span class="r-num">05</span>
                <div class="r-icon">☁</div>
                <h3>Excepciones</h3>
                <p><code>c:catch</code> y manejo de errores</p>
            </a>
            <a href="ejercicios/6/index.jsp" class="r-card">
                <span class="r-num">06</span>
                <div class="r-icon">⟡</div>
                <h3>Iteración</h3>
                <p><code>c:forEach</code> paso a paso</p>
            </a>
            <a href="ejercicios/7/index.jsp" class="r-card">
                <span class="r-num">07</span>
                <div class="r-icon">☾</div>
                <h3>Tokens</h3>
                <p><code>c:forTokens</code></p>
            </a>
            <a href="ejercicios/8/index.jsp" class="r-card">
                <span class="r-num">08</span>
                <div class="r-icon">♫</div>
                <h3>MySQL</h3>
                <p><code>sql:query</code> · <code>sql:update</code></p>
            </a>
        </div>
    </div>

    <div class="r-modal-bg" id="ej1">
        <div class="r-modal">
            <div class="r-modal-h"><span>✧ Primer ejemplo con JSTL</span><a href="#">×</a></div>
            <div class="r-modal-b">
                <div class="r-cols">
                    <div class="r-box">
                        <div class="r-kicker">Texto literal</div>
                        <p><code><c:out value="1+2+3"/></code></p>
                        <p>Muestra: <strong><c:out value="1+2+3"/></strong></p>
                    </div>
                    <div class="r-box">
                        <div class="r-kicker">Expresión EL</div>
                        <p><code><c:out value="${1+2+3}"/></code></p>
                        <p>Evalúa: <strong><c:out value="${1+2+3}"/></strong></p>
                    </div>
                </div>
                <p style="text-align:center;margin-top:1.2rem"><a class="r-btn-ghost" href="#">Cerrar</a></p>
            </div>
        </div>
    </div>

    <footer class="r-foot">
        <div class="hearts">✿ ✿ ✿</div>
        <div>© 2026 JSTL Lab · JSP · JSTL · MySQL</div>
    </footer>
</body>
</html>
