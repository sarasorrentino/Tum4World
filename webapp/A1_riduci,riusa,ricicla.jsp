<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

    <div class="pageContent-container">

        <div class="pageContent-text">
            <h2> Riduci, riusa, ricicla! </h2>
            <p>
                Con l’attività “Riduci, riusa, ricicla!”, Tum4World vuole promuovere la buona pratica del riciclaggio ♻️ e del
                corretto smaltimento dei rifiuti, oltre che a sviluppare una maggiore consapevolezza nei cittadini.
                <br>
                L’attività consiste in una gara di raccolta rifiuti che si svolge a squadre per le strade,
                parchi e spiagge delle nostre città. Ogni membro di una squadra verrà munito di tutto il necessario
                per raccogliere e smistare i rifiuti abbandonati e dovrà raccoglierne il più possibile per far vincere
                la propria squadra.
                <br>
                <span class="italic">
                            Ovviamente non mancano numerosi premi e riconoscimenti…come quello di “Raccoglitore seriale” 🏅.
                        </span>
            </p>

        </div>
    </div>

    <div class="divSpace"></div>

    <a href="attività.jsp">Torna alle attività</a>

<script>
    let param = "id=3"
    let xhttp = new XMLHttpRequest();
    xhttp.open('POST', 'Counter', true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(param);
</script>

<%@include file="utils/footer.jsp"%>
