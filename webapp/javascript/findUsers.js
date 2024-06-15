function donationReq(){
    window.location.assign("donazioni.jsp")
}


function viewReq(){
    window.location.assign("visualizzazioni.jsp")
}

function makeQuery() {
    //Prepariamo la request

    let e = document.getElementById("filtro_utente");
    let tipoUser = e.options[e.selectedIndex].value;
    let url = "../../FindUsers?tipoFiltro="+tipoUser;


    //Mandiamo la richiesta
    let xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, true);
    xhttp.responseType="json";
    xhttp.send();


    //Ricevo la risposta
    xhttp.onreadystatechange = function() {

        if(this.readyState === 4 && this.status === 200) {
            let my_JSON_array = this.response;
            //console.log(my_JSON_array);
            localStorage.setItem('users-list', JSON.stringify(my_JSON_array));
            window.location.assign("findUsers.jsp");

        } else {

        }
    }
}



