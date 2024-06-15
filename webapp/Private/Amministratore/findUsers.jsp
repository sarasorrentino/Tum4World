<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html">
<head>
    <title>TUM4WORLD</title>
    <link rel="shortcut icon" href="../../Immagini/tum4World_favicon.ico"/>
    <link rel="stylesheet" href="administrator-style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
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

    <h2 id="titolo">UTENTI REGISTRATI</h2>
    <p class="result"></p>

    <div class="container-users-table">
        <table id="UsersTable" class="user-table"><th>Ciao</th></table>
    </div>

    <script src="../../javascript/resultUsers.js"></script>
    <script>load()</script>

    <!-- ***** -->

    <%@include file="/utils/footer.jsp"%>