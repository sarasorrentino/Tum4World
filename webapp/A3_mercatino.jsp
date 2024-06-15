<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

    <div class="pageContent-container">

        <div class="pageContent-text">
            <h2> Mercatino dello scambio </h2>
            <p>
                Il settore dell’abbigliamento è uno dei più inquinanti in assoluto, non solo in fase di produzione,
                ma soprattutto anche in fase di smaltimento dei capi usati.
                <br>
                Con il “Mercatino dello scambio”, Tum4World vuole combattere l’industria del fast fashion ed
                incentivare lo scambio e il riutilizzo dei capi d’abbigliamento.
                <br>
                I partecipanti sono invitati a portare vestiti, scarpe, biancheria per la casa, tutto ciò che non
                viene più utilizzato e potrebbe trovare una nuova vita nelle mani di un nuovo proprietario.
            </p>
        </div>
    </div>

    <div class="divSpace"></div>

    <a href="attività.jsp">Torna alle attività</a>

<script>
    let param = "id=5"
    let xhttp = new XMLHttpRequest();
    xhttp.open('POST', 'Counter', true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(param);
</script>

<%@include file="utils/footer.jsp"%>