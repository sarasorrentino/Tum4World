document.addEventListener("DOMContentLoaded", function () {
    let url = "../../PersonalData";
    let xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, true);
    xhttp.responseType="json";
    xhttp.send();

    xhttp.onreadystatechange = function() {

        if(this.readyState === 4 && this.status === 200) {
            let utente = this.response;
            console.log(utente);

            let table = document.getElementById("UserTable");

            //Svuoto la tabella
            while(table.childNodes.length){
                table.removeChild(table.childNodes[0]);
            }

            if(utente === null){
                //ERROR
            } else {

                //Metto le righe nella tabella
                for(const [key, value] of Object.entries(utente)){ //Per ogni elemento presente nella lista
                    let row = table.insertRow();
                    let th = document.createElement("th");
                    let text = document.createTextNode(key);
                    th.appendChild(text);
                    row.appendChild(th);
                    let cell = row.insertCell();
                    text = document.createTextNode(value);
                    cell.appendChild(text);
                }

            }

        } else {
            //ERROR
        }
    }

})


