<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html">
<head>
  <title>TUM4WORLD</title>
  <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
  <link rel="stylesheet" href="administrator-style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <script src="../../javascript/findUsers.js"></script>
</head>

<body>

<div class="principale">
  <!-- ***** -->

  <div class="header">
    <div class="logo">
      <img src="../../Immagini/logo_handPrint_leaf_scura.png">
    </div>
    <div class="title">
      <h1>TUM4WORLD</h1>
    </div>
  </div>

  <%@include file="/utils/navbarPrivata.jsp"%>

  <h2>AREA AMMINISTRATORE</h2>

  <div class="options-list">
    <div class="option">
      <div>
        <h4 style="color: #2271b1; margin-bottom: 10px;">UTENTI REGISTRATI</h4>
        <img src="../../Immagini/utente.svg" width="75px" height="75px" alt="utente">
      </div>
      <div id="custom-select">
        <select name="tipo_utente" id="filtro_utente">
          <option value="tutti" selected="selected">TUTTI</option>
          <option value="SIMPATIZZANTE">SIMPATIZZANTI</option>
          <option value="ADERENTE">ADERENTI</option>
        </select>
        <input type="button" value="MOSTRA" onclick="makeQuery()" />
      </div>
    </div>


    <div class="option">
      <div>
        <h4 style="color: #2271b1; margin-bottom: 10px;">VISUALIZZAZIONI</h4>
        <img src="../../Immagini/views.svg" width="75px" height="75px">
        <input type="button" value="MOSTRA" onclick="viewReq()" />
      </div>
    </div>

    <div class="option">
      <div>
        <h4 style="color: #2271b1; margin-bottom: 10px;">DONAZIONI</h4>
        <img src="../../Immagini/donazioni.svg" width="75px" height="75px">
      </div>
      <input type="button" value="MOSTRA" onclick="donationReq()" />
    </div>
  </div>

<%@include file="/utils/footer.jsp"%>