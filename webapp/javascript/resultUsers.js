function load(){

    let lista = localStorage.getItem("users-list");
    let listaJSON = JSON.parse(lista)

    let table = document.getElementById("UsersTable");

    //Svuoto la tabella
    while(table.childNodes.length){
        table.removeChild(table.childNodes[0]);
    }

    //Display error if the list is empty
    if (listaJSON === null) {
        document.getElementById("result").innerHTML = "No data available for this city";
    }

    if(listaJSON.length >0){
        // document.getElementById("result").innerHTML = "I found these results:";
        //Showing table

        //Create header of table
        let thead = table.createTHead();
        let row = thead.insertRow();

        let header = ['Nome', 'Cognome', 'Data di Nascita', 'Email', 'Telefono', 'Username', 'Tipo Utente'];
        for (let key of header){
            let th = document.createElement("th");
            let text = document.createTextNode(key);
            th.appendChild(text);
            row.appendChild(th);
        }


        //Metto le righe nella tabella
        for(let i=0; i<listaJSON.length; i++){ //Per ogni elemento presente nella lista
            row = table.insertRow();
            let current_JSON_object = JSON.parse(listaJSON[i]);

            for(let value of Object.values(current_JSON_object)){
                let cell = row.insertCell();
                let text = document.createTextNode(value);
                cell.appendChild(text);
            }
        }

    }

    else {
        document.getElementById("result").innerHTML = "No data available for this city";
    }



}