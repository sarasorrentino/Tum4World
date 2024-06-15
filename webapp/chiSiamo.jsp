<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<style>
        .galleria {
            align-self: inherit;
            padding-top: 25px
        }

        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 180px;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery img {
            width: 100%;
            height: 150px;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }
</style>

<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

                <div class="pageContent-text">
                    <h2> Chi Siamo </h2>
                    <p>
                        Tum4World nasce il 9 dicembre 2010 per idea del nostro “capo fondatore” Bosi Kubwa,
                        grande esploratore dai mille interessi tra cui la cura per il nostro amato Pianeta.
                        Di ritorno da una delle sue tante visite in Tanzania 🇹🇿, Bosi decide di fondare Tum4World,
                        un’associazione no-profit che avesse come scopo quello di divulgare tutto ciò che aveva
                        imparato in tanti anni in giro per il mondo.
                    </p>

                    <!-- Galleria Immagini -->
                    <div class="galleria">
                        <div class="gallery">
                            <a target="_blank" href="Immagini/ChiSiamoImgs/piazzaDante.jpg">
                                <img src="Immagini/ChiSiamoImgs/piazzaDante.jpg" alt="piazza Dante" width="600" height="400">
                            </a>
<%--                            <div class="desc">Add a description of the image here</div>--%>
                        </div>

                        <div class="gallery">
                            <a target="_blank" href="Immagini/ChiSiamoImgs/cigno.JPG">
                                <img src="Immagini/ChiSiamoImgs/cigno.JPG" alt="cigno" width="600" height="400">
                            </a>
<%--                            <div class="desc">Add a description of the image here</div>--%>
                        </div>

                        <div class="gallery">
                            <a target="_blank" href="Immagini/ChiSiamoImgs/fiori.JPG">
                                <img src="Immagini/ChiSiamoImgs/fiori.JPG" alt="fiori" width="600" height="400">
                            </a>
<%--                            <div class="desc">Add a description of the image here</div>--%>
                        </div>

                        <div class="gallery">
                            <a target="_blank" href="Immagini/ChiSiamoImgs/montagne.JPG">
                                <img src="Immagini/ChiSiamoImgs/montagne.JPG" alt="montagne" width="600" height="400">
                            </a>
<%--                            <div class="desc">Add a description of the image here</div>--%>
                        </div>

                    </div>
                    <!-- ***** -->

                    <h3>Riconoscimenti</h3>
                    <p>
                        Tum4World ha ottenuto diversi riconoscimenti per la sua devozione ai temi di tutela ambientale e
                        cambiamenti climatici:
                    </p>
                    <ul style="list-style-type: none">
                        <li>
                            <span class="italic">Premio AssociazioneGreen 2014</span> -
                            Riconoscimento conferito all’associazione no-profit che più si è distinta per le proprie
                            azioni green sul territorio
                        </li>
                        <li>
                            <span class="italic">Premio RecycleWay 2018</span> -
                            Riconoscimento conferito all’associazione no-profit che più è stata innovativa nei campi
                            del riciclaggio e dello smaltimento dei rifiuti
                        </li>
                        <li>
                            <span class="italic">Medaglia di Legno (Edizione 2021 e 2022)</span> -
                            Riconoscimento per l’organizzazione del più grande ritrovo sportivo e raccolta rifiuti
                            d’Italia
                        </li>
                    </ul>

                    <h3>Vieni a trovarci!</h3>
                    <p> Tum4World è presente sul territorio italiano in diverse sedi: </p>
                    <ul style="list-style-type: none">
                        <li>
                            <span class="bold"> Trento </span> - via Degli Alberi, 100
                        </li>
                        <li>
                            <span class="bold"> Milano </span> - via Verde, 3
                        </li>
                        <li>
                            <span class="bold"> Roma </span> - via Foglia Gialla, 20
                        </li>
                        <li>
                            <span class="bold"> Napoli </span> - via Mare Blu, 5
                        </li>
                    </ul>
                    <p> …ed in arrivo molte altre! </p>
                </div>


<!--            SCRIPT PER AGGIORNARE IL CONTATORE DELLA PAGINA-->
            <script>
                let param = "id=1"
                let xhttp = new XMLHttpRequest();
                xhttp.open('POST', 'Counter', true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send(param);
            </script>

            <!-- ***** -->

<%@include file="/utils/cookiePopup.jsp"%>
<%@include file="utils/footer.jsp"%>
