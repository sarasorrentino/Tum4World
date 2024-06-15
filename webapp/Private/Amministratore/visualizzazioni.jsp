<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html">
<head>
  <title>TUM4WORLD</title>
  <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
  <link rel="stylesheet" href="administrator-style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <script src="https://code.highcharts.com/highcharts.js"></script>
  <script src="../../javascript/visualizzazioni.js"></script>
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

  <h2>VISUALIZZAZIONI GENERALI</h2>
  <div id="container-chart" class="container-chart" style="width: 100%; height: 400px"></div>

  <div id="azzera-counters" class="azzera-counters">
    <h3>RESET</h3>

    <table>
      <tr>
        <td>
          <label for="Homepage">
            <input id="Homepage"
                   value="Homepage"
                   type="checkbox"
                   name="reset"/>
            Homepage
          </label>
        </td>
        <td>
          <label for="A3_mercatino">
            <input id="A3_mercatino"
                   value="A3_mercatino"
                   type="checkbox"
                   name="reset"/>
            A3_mercatino
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label for="Chi Siamo">
            <input id="Chi Siamo"
                   value="Chi Siamo"
                   type="checkbox"
                   name="reset"/>
            Chi Siamo
          </label>
        </td>
        <td>
          <label for="Contatti">
            <input id="Contatti"
                   value="Contatti"
                   type="checkbox"
                   name="reset"/>
            Contatti
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label for="Attivita">
            <input id="Attivita"
                   value="Attivita"
                   type="checkbox"
                   name="reset"/>
            Attivita
          </label>
        </td>
        <td>
          <label for="Sing In">
            <input id="Sing In"
                   value="Sing In"
                   type="checkbox"
                   name="reset"/>
            Sing In
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label for="A1_riduci,riusa,ricicla">
            <input id="A1_riduci,riusa,ricicla"
                   value="A1_riduci,riusa,ricicla"
                   type="checkbox"
                   name="reset"/>
            A1_riduci,riusa,ricicla
          </label>
        </td>
        <td>
          <label for="Login">
            <input id="Login"
                   value="Login"
                   type="checkbox"
                   name="reset"/>
            Login
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label for="A2_meet_green">
            <input id="A2_meet_green"
                   value="A2_meet_green"
                   type="checkbox"
                   name="reset"/>
            A2_meet_green
          </label>
        </td>
      </tr>
    </table>


    <div class="button-container">
      <input type="button" id="resetCountersButton" value="Conferma" onclick="resetCounters()" />
    </div>
  </div>

  <%@include file="/utils/footer.jsp"%>