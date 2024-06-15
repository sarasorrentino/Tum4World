<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

    <div class="pageContent-container">

        <div class="pageContent-text">
            <h2> Meet & Green </h2>
            <p>
                Con l’attività “Meet & Green”, Tum4World vuole permettere ai propri membri di incontrarsi, scambiarsi
                idee e cibo! Infatti, oltre a conferenze tenute dagli esperti nei temi più disparati, durante i
                “Meet & Green” ogni partecipante è invitato a portare una pietanza da condividere con tutti.
                Questa attività è una delle più amate dai nostri membri in quanto alterna momenti di svago a momenti
                di discussione, il tutto accompagnato da cibo sano e senza sprechi.
            </p>
        </div>
    </div>

    <div class="divSpace"></div>

    <a href="attività.jsp">Torna alle attività</a>

<script>
    let param = "id=4"
    let xhttp = new XMLHttpRequest();
    xhttp.open('POST', 'Counter', true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(param);
</script>

<%@include file="utils/footer.jsp"%>
