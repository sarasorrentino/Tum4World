function getViewReq(){

    let url = "../../Visualizzazioni"
    let xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, true);
    xhttp.responseType="json";
    xhttp.send();

    //Ricevo la risposta
    xhttp.onreadystatechange = function() {
        if(this.readyState === 4 && this.status === 200) {
            let my_JSON_array = this.response;
            localStorage.setItem('view-list', JSON.stringify(my_JSON_array));
        } else {
            //ERRORE
        }
    }

}

document.addEventListener('DOMContentLoaded', getViewReq())
document.addEventListener('DOMContentLoaded', function () {
    const chart = Highcharts.chart('container-chart', {
        chart:{
            type: 'area'
        },
        xAxis: {
            categories: getVisualizzazioniPage()
        },
        yAxis: {
            title: {
                text: "Visualizzazioni"
            }
        },
        series: [{
            data: getVisualizzazioniValue()
        }],
        legend: {enabled: false},
        title: {
            text: " "
        }

    });
});

function getVisualizzazioniPage(){

    let lista = localStorage.getItem("view-list");
    let listaJSON = JSON.parse(lista)

    let arrayViewValue = [];

    //Display error if the list is empty
    if (listaJSON === null) {
        document.getElementById("result").innerHTML = "Problem";
    }

    if(listaJSON.length >0){

        //Metto le righe nella tabella
        for(let i=0; i<listaJSON.length; i++){ //Per ogni elemento presente nella lista
            let current_view = JSON.parse(listaJSON[i]);
            arrayViewValue[i] = current_view.name
        }

        return arrayViewValue;
    }
    else {
        document.getElementById("result").innerHTML = "Zero view";
    }

}

function getVisualizzazioniValue(){

    let lista = localStorage.getItem("view-list");
    let listaJSON = JSON.parse(lista)

    let arrayViewPage = [];

    //Display error if the list is empty
    if (listaJSON === null) {
        document.getElementById("result").innerHTML = "Problem";
    }

    if(listaJSON.length >0){

        //Metto le righe nella tabella
        for(let i=0; i<listaJSON.length; i++){ //Per ogni elemento presente nella lista
            let current_view = JSON.parse(listaJSON[i]);
            arrayViewPage[i] = current_view.value
        }

        return arrayViewPage;
    }
    else {
        document.getElementById("result").innerHTML = "Zero view";
    }
}

function resetCounters(){

    let checkboxes = document.querySelectorAll('input[name="reset"]:checked');
    checkboxes.forEach((checkbox) => {
        let query = "UPDATE CONTATORI SET VALORE = 0 WHERE NOME = '" + checkbox.value + "'";

        //Mandiamo la richiesta
        let param = "query=" + query
        let xhttp = new XMLHttpRequest();
        xhttp.open("POST", "../../ResetCounter", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.responseType="json";
        xhttp.send(param);


        xhttp.onreadystatechange = function() {

            if(this.readyState === 4 && this.status === 200) {

                    getViewReq()
                    location.reload()

            } else {

            }
        }

    })
}