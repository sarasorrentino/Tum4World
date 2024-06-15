<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

            <div class="pageContent-container">

                <div class="form-box">
                    <form method="post" id="formAccesso">

                        <fieldset>
                            <h2 class="form-header"> Accedi </h2>
                            <p class="sottotitolo">
                                Non hai un account?
                                <a href="sign_in.jsp" class="underlined"> Registrati </a>
                            </p>
                        </fieldset>

                        <div id="logIn_inputs">
                            <fieldset style="border: none">
                                <label for="username" class="username">
                                    <p class="etichetta"> Username </p>
                                    <input id="username"
                                           name="username"
                                           type="text"
                                           value=""
                                           placeholder="Username" />
                                </label>

                                <label for="password" class="password">
                                    <p class="etichetta"> Password </p>
                                    <input id="password"
                                           name="password"
                                           type="password"
                                           value=""
                                           placeholder="Password" />
                                </label>
                            </fieldset>
                        </div>

                        <div class="button-container">
                            <input type="button" value="LogIn" onclick="logIn()" />
                        </div>

                        <div id="displayError" class="error_info"></div>
                    </form>

                    <script src="javascript/logIn.js"></script>
                </div>

            </div>

<!--            SCRIPT PER AGGIORNARE IL CONTATORE DELLA PAGINA-->
            <script>
                let param = "id=8"
                let xhttp = new XMLHttpRequest();
                xhttp.open('POST', 'Counter', true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send(param);
            </script>
<%@include file="/utils/cookiePopup.jsp"%>
<%@include file="utils/footer.jsp"%>
