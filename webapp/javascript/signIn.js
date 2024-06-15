/** GLOBAL OBJECT **/
const _validate = {
    hasError: false,
    telPattern: /[0-9]{10}/, // oppure:  /[0-9]{3} [0-9]{3} [0-9]{4}/
    emailPattern: /^[^\s@]+@[^\s@]+\.[^\s@]{2,4}$/,
    pswPattern: /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}/
}

/** MAIN FUNCTION **/
function formValidation() {
    _validate.form = document.getElementById('formRegistrazione');
    _validate.formInputs = Array.from(_validate.form.elements);
    /* elements ritorna una HTML collections con gli input del form,
        per trasformare una HTML collections in array basta fare Array.from() */

    // Elementi in cui stampare eventuali notifiche di errore
    _validate.error_nome = document.getElementById('error_nome');
    _validate.error_cognome = document.getElementById('error_cognome');
    _validate.error_dataNascita = document.getElementById('error_dataNascita');
    _validate.error_telefono = document.getElementById('error_telefono');
    _validate.error_email = document.getElementById('error_email');
    _validate.error_username = document.getElementById('error_username');
    _validate.error_nuovaPsw = document.getElementById('error_nuovaPsw');
    _validate.error_confermaPsw = document.getElementById('error_confermaPsw');
    _validate.displayError = document.getElementById('displayError');

    //Controllo validità form
    checkValidation();
}

/** SECONDARY FUNCTIONS **/
    /* --------------------------------------------------------
    Controlla che tutti i campi siano compilati correttamente
    ----------------------------------------------------------- */
    function checkValidation() {
        requiredFields();

        //Controlli superati
        if(!_validate.hasError){
            makeQuery();
        }
    }

    /* --------------------------------------------------------------------------------
    Controlla la presenza di input vuoti ed eventualmente li contrassegna come errore
    ----------------------------------------------------------------------------------- */
    function requiredFields() {
        _validate.hasError = false;

        _validate.formInputs.forEach(item => {
            switch (item.id) {
                case 'nome':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_nome.innerText = 'Inserisci un nome'; }
                    else {
                        _validate.error_nome.innerText = ''; }
                    break;
                case 'cognome':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_cognome.innerText = 'Inserisci un cognome'; }
                    else {
                        _validate.error_cognome.innerText = ''; }
                    break;
                case 'dataNascita':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_dataNascita.innerText = 'Inserisci una data di nascita'; }
                    else {
                        checkDate(); }
                    break;
                case 'telefono':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_telefono.innerText = 'Inserisci un numero di telefono'; }
                    else { checkTelefono(); }
                    break;
                case 'email':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_email.innerText = 'Inserisci una email'; }
                    else { checkEmail(); }
                    break;
                case 'username':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_username.innerText = 'Inserisci un username'; }
                    else { checkUsername(); }
                    break;
                case 'nuovaPsw':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_nuovaPsw.innerText = 'Inserisci una password'; }
                    else { checkPassword(); }
                    break;
                case 'confermaPsw':
                    if(item.value === '') {
                        _validate.hasError = true;
                        _validate.error_confermaPsw.innerText = 'Conferma la password'; }
                    else { checkConfPwd(); }
                    break;
                default:
                    break;
            }
        });
    }

    /* -----------------------------------
    Controlla che l'utente sia maggiorenne
    --------------------------------------- */
    function checkDate() {
        let today = new Date();
        let ddToday = today.getDate();
        let mmToday = today.getMonth() + 1; //January is 0!
        let yyyyToday = today.getFullYear();

        let dateReceived = _validate.form.dataNascita.value;
        let received = new Date(dateReceived);
        let ddReceived = received.getDate();
        let mmReceived = received.getMonth() + 1
        let yyyyReceived = received.getFullYear();

        if (yyyyToday - yyyyReceived > 18){
            _validate.error_dataNascita.innerText = '';
        } else if ((yyyyToday - yyyyReceived === 18) && (mmToday > mmReceived)) {
            _validate.error_dataNascita.innerText = '';
        } else if ((yyyyToday - yyyyReceived === 18) && (mmToday === mmReceived) && (ddToday >= ddReceived)) {
            _validate.error_dataNascita.innerText = '';
        } else {
            _validate.hasError = true;
            _validate.error_dataNascita.innerText = 'Non sei maggiorenne';
        }
    }

    /* --------------------------------------------------------------------
    Controlla la validità del numero di telefono confrontandola col pattern
    ----------------------------------------------------------------------- */
    function checkTelefono() {
        if(_validate.telPattern.test(_validate.form.telefono.value)) {
            _validate.error_telefono.innerText = '';
        } else {
            _validate.hasError = true;
            _validate.error_telefono.innerText = 'Inserici un numero di telefono valido'
        }
    }

    /* ----------------------------------------------------------
    Controlla la validità della mail confrontandola col pattern
    ------------------------------------------------------------- */
    function checkEmail() {
        if(_validate.emailPattern.test(_validate.form.email.value)) {
            _validate.error_email.innerText = '';
        } else {
            _validate.hasError = true;
            _validate.error_email.innerText = 'Inserisci una email valida';
        }
    }

    /* --------------------------------------------------------------
    Controlla la validità della password confrontandola col pattern
    ----------------------------------------------------------------- */
    function checkPassword() {
        if(_validate.pswPattern.test(_validate.form.nuovaPsw.value)) {
            _validate.error_nuovaPsw.innerText = '';
        } else {
            _validate.hasError = true;
            _validate.error_nuovaPsw.innerText = 'Inserisci una password che rispetti i criteri';
        }
    }

    /* ------------------------------------------
    Controlla l'uguaglianza tra le due password
    --------------------------------------------- */
    function checkConfPwd() {
        if(_validate.form.nuovaPsw.value === _validate.form.confermaPsw.value) {
            _validate.error_confermaPsw.innerText = '';
        } else {
            _validate.hasError = true;
            _validate.error_confermaPsw.innerText = 'Le password non coincidono';
        }
    }

    /* ------------------------------------------
    Controlla se l'username esiste o meno
    --------------------------------------------- */
    function checkUsername() {
        let form = document.querySelector('#formRegistrazione');
        let formValues = new FormData(form);

        //Making request
        let xhttp = new XMLHttpRequest();
        xhttp.open('POST', 'CheckUser', true);
        xhttp.send(formValues);

        //Ricevo la risposta
        xhttp.onreadystatechange = function() {
            if(this.readyState === 4 && this.status === 200) {
                //l'username è univoco
                _validate.error_username.innerText = '';
            } else if (this.readyState === 4 && this.status === 409){
                //l'username esiste già
                _validate.hasError = true;
                _validate.error_username.innerText = 'Error 33: Username già in uso';
            }
        }
    }

    /* ------------------------------------------
    Passaggio parametri e richiesta alla servlet
    --------------------------------------------- */
    function makeQuery() {
        //Preparing request
        let form = document.querySelector('#formRegistrazione');
        let formValues = new FormData(form);

        //Making request
        let xhttp = new XMLHttpRequest();
        xhttp.open('POST', 'SignIn', true);
        xhttp.send(formValues);


        //Ricevo la risposta
        xhttp.onreadystatechange = function() {
            if(this.readyState === 4 && this.status === 200) {
                console.log("Risposta: " +this.responseText);
                resetForm();
                window.location.href = 'registrazioneConfermata.jsp';
            } else if (this.readyState === 4 && this.status === 500){
                console.log("Registrazione fallita");
                console.log("Risposta: " +this.responseText);
            }
        }
    }

    /* ----------------------------------------------------------
    Una volta superati i controlli e inviato i dati alla servlet,
    i campi del form vengono resettati
    ------------------------------------------------------------- */
    function resetForm() {
        _validate.form.reset();

        _validate.error_nome.innerText = '';
        _validate.error_cognome.innerText = '';
        _validate.error_dataNascita.innerText = '';
        _validate.error_telefono.innerText = '';
        _validate.error_email.innerText = '';
        _validate.error_username.innerText = '';
        _validate.error_nuovaPsw.innerText = '';
        _validate.error_confermaPsw.innerText = '';
    }