<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <nav>
        <ul class="nav-list">
            <li class="nav-item">
                <a class="nav-link" href="../../homepage.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../../chiSiamo.jsp">Chi siamo</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../../attività.jsp">Attività</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../../contatti.jsp">Contatti</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../../sign_in.jsp">Registrati</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../../login.jsp">Accedi</a>
            </li>
        </ul>
    </nav>
    <a href="../../login.jsp"><img src="../../Immagini/logout.svg" width="20px" height="20px" title="Logout" alt="logout"></a>
    <script>
        document.querySelectorAll(".nav-link").forEach((link) => {
            if (link.href === window.location.href) {
                link.classList.add("active");
                link.setAttribute("aria-current", "page");
            }
            else {
                link.classList.remove("active");
            }
        });
    </script>
</header>
