<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<nav>
    <ul class="nav-list">
        <li class="nav-item">
            <a class="nav-link active" href="homepage.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="chiSiamo.jsp">Chi siamo</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="attività.jsp">Attività</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="contatti.jsp">Contatti</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="sign_in.jsp">Registrati</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="login.jsp">Accedi</a>
        </li>
    </ul>
</nav>
<script>
    document.querySelectorAll(".nav-link").forEach((link) => {
        if (link.href === window.location.href) {
            link.classList.add("active");
        }
        else {
            link.classList.remove("active");
        }
    });
</script>
