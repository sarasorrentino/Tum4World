/** GLOBAL OBJECT **/
const _validate = {
    hasError: false,
    emailPattern: /^[^\s@]+@[^\s@]+\.[^\s@]{2,4}$/
}

/** MAIN FUNCTION **/
function formValidationContatti() {
    _validate.form = document.getElementById('formRegistrazione');
    _validate.formInputs = Array.from(_validate.form.elements);
    /* elements ritorna una HTML collections con gli input del form,
        per trasformare una HTML collections in array basta fare Array.from() */

    // Elementi in cui stampare eventuali notifiche di errore
    _validate.error_nome = document.getElementById('error_nome');
    _validate.error_cognome = document.getElementById('error_cognome');
    _validate.error_email = document.getElementById('error_email');

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
        sendEmail();
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
            case 'email':
                if(item.value === '') {
                    _validate.hasError = true;
                    _validate.error_email.innerText = 'Inserisci una email'; }
                else { checkEmail(); }
                break;
        }
    });
}

function checkEmail() {
    if(_validate.emailPattern.test(_validate.form.email.value)) {
        _validate.error_email.innerText = '';
    } else {
        _validate.hasError = true;
        _validate.error_email.innerText = 'Inserisci una email valida';
    }
}

function sendEmail() {
    let form = document.querySelector('#formRegistrazione');
    let formValues = new FormData(form);

    //making request
    let xhttp = new XMLHttpRequest();
    xhttp.open('POST', 'SendEmail', true);
    xhttp.send(formValues);

    //receive response
    xhttp.onreadystatechange = function() {
        if(this.readyState === 4 && this.status === 200) {
            console.log("Risposta: " +this.responseText);
            resetFormContatti();
            window.location.href = 'emailInviata.jsp';
        } else{
            console.log("Email non inviata");
            console.log("Risposta: " +this.responseText);
            
        }
    }
}

function  resetFormContatti() {
    _validate.form.reset();

    _validate.error_nome.innerText = '';
    _validate.error_cognome.innerText = '';
    _validate.error_email.innerText = '';
}
