<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

            <div class="pageContent-container">

                <div class="form-box">
                    <form method="post" id="formRegistrazione">

                        <fieldset>
                            <h2 class="form-header"> Crea un account </h2>
                            <p class="sottotitolo">
                                Sei già registrato?
                                <a href="login.jsp" class="underlined"> Accedi </a>
                            </p>
                        </fieldset>

                        <div id="signIn_inputs">
                            <fieldset>
                                <label for="nome" class="nome">
                                    <p class="etichetta"> Nome </p>
                                    <input id="nome"
                                           name="nome"
                                           type="text"
                                           placeholder="Nome"
                                           value="" />
                                    <span id="error_nome" class="error_info"></span>
                                </label>

                                <label for="cognome" class="cognome">
                                    <p class="etichetta"> Cognome </p>
                                    <input id="cognome"
                                           name="cognome"
                                           type="text"
                                           placeholder=" Cognome"
                                           value="" />
                                    <span id="error_cognome" class="error_info"></span>
                                </label>

                                <label for="dataNascita" class="dataNascita">
                                    <p class="etichetta"> Data di nascita </p>
                                    <input id="dataNascita"
                                           name="dataNascita"
                                           type="text"
                                           onfocus="(this.type='date')"
                                           onblur="(this.type='text')"
                                           placeholder=" Data di nascita"
                                           value="" />
                                    <span id="error_dataNascita" class="error_info"></span>
                                </label>

                                <label for="telefono" class="telefono">
                                    <p class="etichetta"> Numero di telefono </p>
                                    <input id="telefono"
                                           name="telefono"
                                           type="tel"
                                           placeholder="Numero di telefono"
                                           value="" />
                                    <span id="error_telefono" class="error_info"></span>
                                </label>

                                <label for="email" class="email">
                                    <p class="etichetta"> Email </p>
                                    <input id="email"
                                           name="email"
                                           type="email"
                                           placeholder="Email"
                                           value="" />
                                    <span id="error_email" class="error_info"></span>
                                </label>

                                <label for="username" class="username">
                                    <p class="etichetta"> Username </p>
                                    <input id="username"
                                           name="username"
                                           type="text"
                                           placeholder="Username"
                                           value="" />
                                    <span id="error_username" class="error_info"></span>
                                </label>

                                <label for="nuovaPsw" class="nuovaPsw">
                                    <p class="etichetta"> Password </p>
                                    <input id="nuovaPsw"
                                           name="nuovaPsw"
                                           type="password"
                                           placeholder="Password"
                                           value="" />
                                    <span id="error_nuovaPsw" class="error_info"></span>
                                </label>

                                <label for="confermaPsw" class="confermaPsw">
                                    <p class="etichetta"> Conferma password </p>
                                    <input id="confermaPsw"
                                           name="confermaPsw"
                                           type="password"
                                           placeholder="Conferma password"
                                           value="" />
                                    <span id="error_confermaPsw" class="error_info"></span>
                                </label>

                                <p class="descrizione">
                                    La password deve essere lunga 8 caratteri, deve contenere almeno un carattere numerico,
                                    un carattere maiuscolo e un carattere tra $, ! e ?
                                </p>

                            </fieldset>

                            <fieldset style="border: none">
                                <p class="etichetta"> Tipologia account </p>

                                <div class="radio-container">
                                    <label for="simpatizzante" class="simpatizzante">
                                        <input id="simpatizzante"
                                               value="SIMPATIZZANTE"
                                               type="radio"
                                               name="accountType"
                                               class="inline"
                                               checked="" />
                                        Simpatizzante
                                    </label>

                                    <label for="aderente" class="aderente">
                                        <input id="aderente"
                                               value="ADERENTE"
                                               type="radio"
                                               name="accountType"
                                               class="inline" />
                                        Aderente
                                    </label>
                                </div>

                                <p class="descrizione">
                                    Con l'account '<span style="font-style: italic;">Simpatizzante</span>' è soltanto possibile iscriversi
                                    alle attività dell'associazione, mentre con l'account '<span style="font-style: italic;">Aderente</span>'
                                    è anche possibile effettuare donazioni per sostenere l'associazione.
                                </p>
                            </fieldset>
                        </div>

                        <div class="button-container">
                            <input type="reset" onclick="resetForm()" />
                            <input type="button" id="signInButton" value="Registrati" onclick="formValidation()" />
                        </div>
                    </form>
                    <script src="javascript/signIn.js"></script>
                </div>

            </div>

<!--            SCRIPT PER AGGIORNARE IL CONTATORE DELLA PAGINA-->
            <script>
                let param = "id=7"
                let xhttp = new XMLHttpRequest();
                xhttp.open('POST', 'Counter', true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send(param);
            </script>
<%@include file="/utils/cookiePopup.jsp"%>
<%@include file="utils/footer.jsp"%>
