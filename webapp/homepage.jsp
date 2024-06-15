<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

    <div class="pageContent-text">
        <h2> Benvenuti in Tum4World! </h2>
        <p class="text">
            Tum4World è un’associazione no-profit che ha a cuore la salvaguarda dell’ambiente 🌳.
            La nostra etica di agire direttamente sul campo è affiancata da momenti di ritrovo e di discussione
            su tutti i temi che interessano il mondo della sostenibilità, l’ambiente ed il prendersi cura della
            nostra Casa 🌍.
        </p>
    </div>

    <div class="volantino">
        <button>
            <a href="Volantino.pdf" download> Scarica il volantino </a>
        </button>
    </div>

<!--        SCRIPT PER AGGIORNARE IL CONTATORE DELLA PAGINA-->
<script>
    let param = "id=0"
    let xhttp = new XMLHttpRequest();
    xhttp.open('POST', 'Counter', true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(param);
</script>
<%@include file="/utils/cookiePopup.jsp"%>
<%@include file="utils/footer.jsp"%>