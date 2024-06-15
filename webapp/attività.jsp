<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<style>
        .galleria {
            align-self: inherit;
            padding-top: 25px
        }

        div.gallery {
            margin: 15px;
            border: 1px solid #ccc;
            float: left;
            width: 300px;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery img {
            width: 100%;
            height: 200px;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }
    </style>

            <%@include file="utils/header.jsp"%>
            <%@include file="utils/navbarPubblica.jsp"%>
            <%@include file="utils/boxFrasi.jsp"%>

            <!-- ***** -->

            <div class="pageContent-container">

                <div class="pageContent-text">
                    <h2> Attività </h2>
                    <p> Tum4World offre diverse attività svolte durante tutto l’anno presso le città in cui ha sede. </p>

                    <!--Elenco Attività-->
                    <div class="galleria">
                        <h3>Riduci, riusa, ricicla!</h3>
                        <div class="gallery">
                            <a href="A1_riduci,riusa,ricicla.jsp">
                                <img src="Immagini/Attivita/nareeta-martin-FoG7PKNYjpM-unsplash.jpg" alt="Riduci,riusa,ricicla" width="600" height="400">
                            </a>
                            <div class="desc">Impara a riciclare...</div>
                        </div>
                        <div class="gallery">
                            <a href="A1_riduci,riusa,ricicla.jsp">
                                <img src="Immagini/Attivita/brian-yurasits-Nk85jPGgVsM-unsplash.jpg" alt="Riduci,riusa,ricicla" width="600" height="400">
                            </a>
                            <div class="desc">...per te, per gli altri...</div>
                        </div>
                        <div class="gallery">
                            <a href="A1_riduci,riusa,ricicla.jsp">
                                <img src="Immagini/Attivita/dhaya-eddine-bentaleb-G-jh_57WkMI-unsplash.jpg" alt="Riduci,riusa,ricicla" width="600" height="400">
                            </a>
                            <div class="desc">...e per il nostro pianeta!</div>
                        </div>
                    </div>

                    <div class="galleria">
                        <h3>Meet & Green</h3>
                        <div class="gallery">
                            <a href="A2_meet&green.jsp">
                                <img src="Immagini/Attivita/absolutvision-82TpEld0_e4-unsplash.jpg" alt="Meet & Greet" width="600" height="400">
                            </a>
                            <div class="desc">Condividi idee...</div>
                        </div>
                        <div class="gallery">
                            <a href="A2_meet&green.jsp">
                                <img src="Immagini/Attivita/elaine-casap-qgHGDbbSNm8-unsplash.jpg" alt="Meet & Greet" width="600" height="400">
                            </a>
                            <div class="desc">...e cibo...</div>
                        </div>
                        <div class="gallery">
                            <a href="A2_meet&green.jsp">
                                <img src="Immagini/Attivita/david-todd-mccarty-TUUEdIhwNFQ-unsplash.jpg" alt="Meet & Greet" width="600" height="400">
                            </a>
                            <div class="desc">...all'aria aperta!</div>
                        </div>
                    </div>

                    <div class="galleria">
                        <h3>Mercatino dello scambio</h3>
                        <div class="gallery">
                            <a href="A3_mercatino.jsp">
                                <img src="Immagini/Attivita/becca-mchaffie-Fzde_6ITjkw-unsplash.jpg" alt="Mercatino dello scambio" width="600" height="400">
                            </a>
                            <div class="desc">Scambia i vestiti che non usi più...</div>
                        </div>
                        <div class="gallery">
                            <a href="A3_mercatino.jsp">
                                <img src="Immagini/Attivita/dan-gold-aJN-jjFLyCU-unsplash (1).jpg" alt="Mercatino dello scambio" width="600" height="400">
                            </a>
                            <div class="desc">...facendo nuovi amici...</div>
                        </div>
                        <div class="gallery">
                            <a href="A3_mercatino.jsp">
                                <img src="Immagini/Attivita/sarah-brown-oa7pqZmmhuA-unsplash.jpg" alt="Mercatino dello scambio" width="600" height="400">
                            </a>
                            <div class="desc">...in modo resposabile e zero waste!</div>
                        </div>
                    </div>
                    <!-- *****-->
                </div>
            </div>

<!--            SCRIPT PER AGGIORNARE IL CONTATORE DELLA PAGINA-->
            <script>
                let param = "id=2"
                let xhttp = new XMLHttpRequest();
                xhttp.open('POST', 'Counter', true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send(param);
            </script>

<%@include file="/utils/cookiePopup.jsp"%>
<%@include file="utils/footer.jsp"%>
