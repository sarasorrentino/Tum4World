<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>

        <div class="cookie-wrapper">
            <img src="Immagini/cookieImg.png" alt="Cookie Img">
            <div class="cookie-content">
                <header>Informativa Cookies</header>
                <p>Questo sito utilizza i cookies per assicurare una migliore esperienza di navigazione.</p>
                <div class="cookie-buttons">
                    <button class="cookie-item cookie-accept-button">Accetto</button>
                    <button class="cookie-item cookie-deny-button">Rifiuto</button>
                </div>
                <a href="https://www.provincia.tn.it/Informative/Informativa-Cookies#">Leggi di più</a>
            </div>
        </div>
        <script>
            const cookieBox = document.querySelector(".cookie-wrapper"),
                acceptBtn = cookieBox.querySelector(".cookie-accept-button"),
                denyBtn = cookieBox.querySelector(".cookie-deny-button");

            //let checkCookie = document.cookie.indexOf("AccettaCookies=Tum4World_33");
            //Se il cookie esiste non mostra il pop-up, altrimenti sì
            //checkCookie != -1 ? cookieBox.classList.add("hide") : cookieBox.classList.remove("hide");

            var cookies = localStorage.getItem("cookies");
            if(cookies != null){
                cookieBox.classList.add("hide");
            }

            acceptBtn.onclick = ()=>{
                //Tempo di vita del cookie = 1 mese
                document.cookie = "AccettaCookies=Tum4World_33; max-age="+60*60*24*30;
                if(document.cookie){ //if cookie is set
                    cookieBox.classList.add("hide"); //Nascondo il cookie pop-up
                    console.log("accetto cookies");
                    localStorage.setItem("cookies","true");
                }else{ //Cookie rifiutato
                    alert("Cookie bloccati!");
                }
            }

            denyBtn.onclick = ()=>{
                cookieBox.classList.add("hide"); //Nascondo il cookie pop-up
                console.log("rifiuto cookies");
                localStorage.setItem("cookies","false");
            }
        </script>
