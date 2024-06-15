<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <title>TUM4WORLD</title>
    <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
    <link rel="stylesheet" href="simpatizzante-style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <script src="../../javascript/partecipaAttivita.js"></script>
</head>

<body>
<div class="principale">
    <div class="header">
        <div class="logo">
            <img src="../../Immagini/logo_handPrint_leaf_scura.png">
        </div>
        <div class="title">
            <h1>TUM4WORLD</h1>
        </div>
    </div>

    <%@include file="/utils/navbarPrivata.jsp"%>

    <h2>PARTECIPA ALLE NOSTRE ATTIVITA'</h2>

    <div class="activities-container">
        <div class="gallery">
            <img src="../../Immagini/Attivita/brian-yurasits-Nk85jPGgVsM-unsplash.jpg" width="200" height="auto" onclick="toggleCheck(0)">
        <div><input type="checkbox" id="0" name="activities" value="0">Riduci, riusa, ricicla!</div>
        </div>
        <div class="gallery">
            <img src="../../Immagini/Attivita/david-todd-mccarty-TUUEdIhwNFQ-unsplash.jpg" width="200" height="auto" onclick="toggleCheck(1)">
            <div><input type="checkbox" id="1" name="activities" value="1">Meet & Green</div>
        </div>
        <div class="gallery">
            <img src="../../Immagini/Attivita/sarah-brown-oa7pqZmmhuA-unsplash.jpg" width="200" height="auto" onclick="toggleCheck(2)">
            <div><input type="checkbox" id="2" name="activities" value="2">Mercatino dello scambio</div>
        </div>
    </div>

    <div class="button-container">
        <input type="button" id="activitiesButton" value="SALVA" onclick="iscrivitiAttivita()" />
    </div>

<%@include file="/utils/footer.jsp"%>

