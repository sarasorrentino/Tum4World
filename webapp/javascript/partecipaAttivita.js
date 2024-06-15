document.addEventListener("DOMContentLoaded", getChecked())

function getChecked(){

    let xhttp = new XMLHttpRequest();
    xhttp.open("POST", "../../getIscrizioni", true);
    xhttp.responseType="json";
    xhttp.send();

    xhttp.onreadystatechange = function() {
        if(this.readyState === 4 && this.status === 200) {
            this.response.forEach((check)=>{
                document.getElementById(check).checked = true;
            });
        } else {
            //ERRORE
        }
    }

}

function iscrivitiAttivita(){

    let checkboxes = document.querySelectorAll('input[name="activities"]');
    let param = "";
    let xhttp = new XMLHttpRequest();

    for (checkbox of checkboxes){
        if(checkbox.checked){
            param = "activity="+checkbox.value+"&checked="+true;
        }else{
            param = "activity="+checkbox.value+"&checked="+false;
        }

        console.log("Mando richiesta: " + checkbox.value)
        xhttp.open("POST", "../../PartecipaAttivita", false);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send(param);

        xhttp.onreadystatechange = function() {
            if(this.readyState === 4 && this.status === 200) {
            } else {
                //ERRORE
            }
        }
    }

    let msg,a;
    checkboxes = document.querySelectorAll('input[name="activities"]:checked');
    if(checkboxes.length==0){
        msg = "Non sei iscritto ad alcuna attività"
    }else{
        msg = "Sei iscritto a: "
        checkboxes.forEach((check) => {
            if(check.id == 0) a="Riduci, riusa, ricicla!"
            if(check.id == 1) a="Meet & Green"
            if(check.id == 2) a="Mercatino dello scambio"
            msg = msg + "\n- " + a
        })
    }
    alert(msg)

}


function toggleCheck(i){
    let a = document.getElementById(i).checked
    if(a)  document.getElementById(i).checked = false
    else document.getElementById(i).checked = true
}
