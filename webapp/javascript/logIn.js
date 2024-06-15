var form = document.querySelector('#formAccesso');
var displayError = document.getElementById('displayError');

/** MAIN FUNCTION **/
function logIn() {
    //preparing request

    let formValues = new FormData(form);

    //Making request
    let xhttp = new XMLHttpRequest();
    xhttp.open('POST', 'LogIn', true);
    xhttp.send(formValues);

    //Ricevo la risposta
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            let responseJSON = JSON.parse(this.response);
            resetForm();
          
            if (responseJSON.tipo_account === "SIMPATIZZANTE") {
                window.location.href = 'Private/Simpatizzante/dashSimpatizzante.jsp';
                localStorage.setItem("accounttype", "0");
            }
            else if (responseJSON.tipo_account === "ADERENTE") {
                window.location.href = 'Private/Aderente/dashAderente.jsp';
                localStorage.setItem("accounttype", "1");
            }
            else if (responseJSON.tipo_account === "AMMINISTRATORE") {
                window.location.href = 'Private/Amministratore/dashAmministratore.jsp';
                localStorage.setItem("accounttype", "2");
            }
        }
        else if (this.readyState === 4 && this.status === 500) {
            displayError.innerText = 'Error33: Dati immessi non corretti';
        }
    }
}

/** SECONDARY FUNCTIONS **/
function resetForm() {
    form.reset();
    displayError.innerText = '';
}
