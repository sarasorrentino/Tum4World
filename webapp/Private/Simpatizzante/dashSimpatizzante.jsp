<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it">
<head>
  <title>TUM4WORLD</title>
  <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
  <link rel="stylesheet" href="simpatizzante-style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <script src="../../javascript/dashSimp.js"></script>
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

  <h2>AREA SIMPATIZZANTE</h2>

  <div class="options-list">
    <div class="option">
      <img src="../../Immagini/personalAreaYellow.svg" width="75px" height="75px">
      <input type="button" value="AREA PERSONALE" onclick="personalAreaNav()"/>
    </div>

    <div class="option">
      <img src="../../Immagini/registerYellow.svg" width="75px" height="75px" alt="registrati alle attività">
      <input type="button" value="PARTECIPA ALLE ATTIVITA" onclick="partecipaNav()" />
    </div>

    <div class="option">
      <img src="../../Immagini/binYellow.svg" width="75px" height="75px" alt="delete account">
      <input type="button" value="DISISCRIVIMI" onclick="removeUser()" />
    </div>
  </div>

  <%@include file="/utils/footer.jsp"%>
