function personalAreaNav() {
    window.location.assign("areaPersonale.jsp")
}


function partecipaNav(){
    window.location.assign("partecipaAttivita.jsp")
}

function removeUser() {
    let xhttp;

    if (confirm('Sei sicuro di voler eliminare DEFINITAMENTE il tuo account?')) {
        // Rimuovi
        xhttp = new XMLHttpRequest();
        xhttp.open('GET', '../../DeleteUser', true);
        xhttp.send();

        xhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                /* Se l'account è stato correttamente eliminato, l'utente non può più visualizzare
                l'area privata in cui è, quindi lo rimando alla homepage */
                window.location.href = '../../homepage.jsp';
            } else if(this.readyState === 4) {
                alert("Qualcosa è andato storto, riprova");
            }
        }
    } else {
        console.log('Operazione annullata');
    }
}
