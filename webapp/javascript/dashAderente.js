function personalAreaNav() {
    window.location.assign("areaPersonale.jsp")
}

function partecipaNav(){
    window.location.assign("partecipaAttivita.jsp")
}

function makeDonazione(){

    let importo = document.getElementById("donationButton").value
    let date = new Date()
    let dateToPass = date.getFullYear() + "-" + (date.getMonth() + 1).toString().padStart(2, "0") + "-" + (date.getDate()).toString().padStart(2, "0")
    let param = "importo=" + importo + "&date=" + dateToPass

    if(importo>0){
        if (confirm('Confermi una donazione di '+ importo + '€?')) {

            let xhttp = new XMLHttpRequest();
            xhttp.open("POST", "../../EffettuaDonazione", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.responseType = "json";
            xhttp.send(param);

            xhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    alert("Donazione effettuata con successo!\nGrazie per il tuo contributo")
                } else if (this.readyState === 4 && this.status === 500) {
                    alert("Spiacenti, è stato impossibile effettuare la donazione...")
                }
            }
        } else {
            console.log("Operazione donazione")
        }
    } else {
        alert("Inserire un valore valido")
    }

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