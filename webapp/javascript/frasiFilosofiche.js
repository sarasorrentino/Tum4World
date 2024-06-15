function cambiaFrase() {
    let divFrase = document.getElementById("fraseFilosofica");

    console.log("Creo richiesta")
    let xhttp = new XMLHttpRequest();
    xhttp.open('GET', 'FrasiFilosofiche', true);
    // xhttp.responseType="text";
    xhttp.send();

    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            divFrase.innerHTML = this.response;
        } else {
         console.log("Change failed");
        }
    }
}

cambiaFrase();
setInterval(cambiaFrase, 20000);