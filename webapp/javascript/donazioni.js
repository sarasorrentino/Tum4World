document.addEventListener('DOMContentLoaded', function () {
    const chart = Highcharts.chart('container-chart', {
        chart:{
            type: 'area'
        },
        xAxis: {
            categories: ['Gennaio',
                'Febbraio',
                'Marzo',
                'Aprile',
                'Maggio',
                'Giugno',
                'Luglio',
                'Agosto',
                'Settembre',
                'Ottobre',
                'Novembre',
                'Dicembre']
        },
        yAxis: {
            title: {
                text: "Totale (€)"
            }
        },
        series: [{
            name: 'Mese',
            data: getDonazioniSum()
        }],
        legend: {enabled: false},
        title: {
            text: " "
        }

    });

});


document.addEventListener("DOMContentLoaded", function () {
    let url = "../../Donazioni"
    let xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, true);
    xhttp.responseType="json";
    xhttp.send();

    xhttp.onreadystatechange = function() {

        if(this.readyState === 4 && this.status === 200) {
            let my_JSON_array = this.response;
            console.log(my_JSON_array);
            document.getElementById("DonazioniTitle").innerHTML = "DONAZIONI ANNO " + (new Date()).getFullYear()
            localStorage.setItem('donazioni-list', JSON.stringify(my_JSON_array));
        } else {
            //ERROR
        }
    }

})


function getDonazioniSum(){

    let lista = localStorage.getItem("donazioni-list");
    let listaJSON = JSON.parse(lista)

    let arrayDonazioniSum = [];

    //Display error if the list is empty
    if (listaJSON === null) {
        document.getElementById("result").innerHTML = "Problem";
    }

    if(listaJSON.length >0){

        //Metto le righe nella tabella
        for(let i=0; i<listaJSON.length; i++){ //Per ogni elemento presente nella lista
            let current_Donazione = JSON.parse(listaJSON[i]);
            arrayDonazioniSum[i] = current_Donazione.sum
        }

        return arrayDonazioniSum;
    }
    else {
        document.getElementById("result").innerHTML = "Zero sum";
    }

}