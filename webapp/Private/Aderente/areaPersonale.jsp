<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it">
<head>
  <title>TUM4WORLD</title>
  <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
  <link rel="stylesheet" href="aderente-style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <script src="../../javascript/personalArea.js"></script>
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

  <h2>AREA PERSONALE</h2>

  <div class="area-personale">
    <table id="UserTable"></table>
  </div>

  <%@include file="/utils/footer.jsp"%>
