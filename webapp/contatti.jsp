<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@include file="utils/header.jsp"%>
<%@include file="utils/navbarPubblica.jsp"%>
<%@include file="utils/boxFrasi.jsp"%>

                <div class="pageContent-text">
                    <h2> Contatti </h2>

                    <h3> Le nostre sedi </h3>
                    <p> Tum4World è presente sul territorio italiano in diverse sedi: </p>
                    <ul style="list-style: none; padding: 15px 0">
                        <li>
                            <span class="bold"> Trento </span> - via degli Alberi, 100
                            <br>
                            (Sede Principale)
                        </li>
                        <li>
                            <span class="bold"> Milano </span> - via Verde, 3
                        </li>
                        <li>
                            <span class="bold"> Roma </span> - via Foglia Gialla, 20
                        </li>
                        <li>
                            <span class="bold"> Napoli </span> - via Mare Blu, 5
                        </li>
                    </ul>

                    <h3>Contattaci!</h3>
                    <ul style="list-style: none">
                        <li>📞 +39 0461 330033</li>
                        <li>📧 tum4world@email.com</li>
                    </ul>
                    <h3>Oppure compila il form qui sotto</h3>
                </div>

            <div class="form-box">
                <form method="post" id="formRegistrazione">
                    <div id="contact_inputs">
                        <fieldset>
                            <label for="nome" class="nome">
                                <p class="etichetta"> Nome </p>
                                <input id="nome"
                                       name="nome"
                                       type="text"
                                       placeholder="Nome"
                                       value=""
                                       size="50" />
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

                            <label for="email" class="email">
                                <p class="etichetta"> Email </p>
                                <input id="email"
                                       name="email"
                                       type="email"
                                       placeholder="Email"
                                       value="" />
                                <span id="error_email" class="error_info"></span>
                            </label>


                            <label for="combo_box" class="combo_box">
                                <p class="etichetta"> Motivo </p>
                                <select name="combo_box" id="combo_box">
                                    <option value="suggerimenti">Suggerimenti</option>
                                    <option value="informazioni">Informazioni</option>
                                    <option value="collaborazioni">Collaborazioni</option>
                                    <option value="altro">Altro</option>
                                </select>
                                <span id="error_combo_box" class="error_info"></span>
                            </label>

                            <label for="email_body" class="email_body">
                                <p class="etichetta"> Messaggio </p>
                                <textarea id="email_body"
                                          name="email_body"
                                          placeholder=" Scrivi qui il tuo messaggio"></textarea>
                                <span id="error_email_body" class="error_info"></span>
                                <br>
                            </label>

                        </fieldset>
                    </div>

                    <div class="button-container">
                        <input type="reset" onclick="resetFormContatti()" />
                        <input type="button" id="sendEmailButton" value="Invia" onclick="formValidationContatti()" />
                    </div>

                </form>
                <script src="javascript/contatti.js"></script>
            </div>

<!--            SCRIPT PER AGGIORNARE IL CONTATORE DELLA PAGINA-->
        <script>
            let param = "id=6"
            let xhttp = new XMLHttpRequest();
            xhttp.open('POST', 'Counter', true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send(param);
        </script>

<%@include file="/utils/cookiePopup.jsp"%>
<%@include file="utils/footer.jsp"%>
