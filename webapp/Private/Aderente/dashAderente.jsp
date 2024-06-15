<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html">
<head>
  <title>TUM4WORLD</title>
  <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
  <link rel="stylesheet" href="aderente-style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <script src="../../javascript/dashAderente.js"></script>
</head>

<body>

<div class="principale">
  <!-- ***** -->

  <div class="header">
    <div class="logo">
      <img src="../../Immagini/logo_handPrint_leaf_scura.png" alt="logo">
    </div>
    <div class="title">
      <h1>TUM4WORLD</h1>
    </div>
  </div>

  <%@include file="/utils/navbarPrivata.jsp"%>

  <!-- ***** -->

  <h2>AREA ADERENTE</h2>

  <div class="options-list">
    <div class="options-container">
      <div class="option">
        <img src="../../Immagini/personalAreaOrange.svg" width="75px" height="75px" alt="personalArea">
        <input type="button" value="AREA PERSONALE" onclick="personalAreaNav()"/>
      </div>

      <div class="option">
        <img src="../../Immagini/registerOrange.svg" width="75px" height="75px" alt="registrati alle attività">
        <input type="button" value="PARTECIPA ALLE ATTIVITA" onclick="partecipaNav()" />
      </div>
    </div>

    <div class="options-container">
      <div class="option">
        <img src="../../Immagini/donate.svg" width="75px" height="75px" alt="delete account">
        <div id="donationInputs">
          <input id="donationButton" type="number" min="1">
          <input type="button" value="DONA" onclick="makeDonazione()" />
        </div>
      </div>

      <div class="option">
        <img src="../../Immagini/binOrange.svg" width="75px" height="75px" alt="delete account">
        <input type="button" value="DISISCRIVIMI" onclick="removeUser()" />
      </div>
    </div>
  </div>

  <%@include file="/utils/footer.jsp"%>
