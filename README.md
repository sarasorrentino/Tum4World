# Tum4World

## Home Page

Tum4World è un’associazione no-profit che ha a cuore la salvaguarda dell’ambiente 🌳. La nostra etica di agire direttamente sul campo è affiancata da momenti di ritrovo e di discussione su tutti i temi che interessano il mondo della sostenibilità, l’ambiente ed il prendersi cura della nostra Casa 🌍.

## Chi siamo

#### Chi siamo

Tum4World nasce il 9 dicembre 2010 per idea del nostro “capo fondatore” Bosi Kubwa, grande esploratore dai mille interessi tra cui la cura per il nostro amato Pianeta. 

Di ritorno da una delle sue tante visite in Tanzania 🇹🇿, Bosi decide di fondare Tum4World, un’associazione no-profit che avesse come scopo quello di divulgare tutto ciò che aveva imparato in tanti anni in giro per il mondo. 

In particolare, Tum4World ha tre principi fondamentali:

1. Salvaguardia dell’ambiente e dei suoi abitanti;
2. Creazione di momenti di incontro per la comunità;
3. Divulgazione della propria etica a grandi e piccini. 

#### Riconoscimenti

Tum4World ha ottenuto diversi riconoscimenti per la sua devozione ai temi di tutela ambientale e cambiamenti climatici:

- *Premio AssociazioneGreen 2014* - Riconoscimento conferito all’associazione no-profit che più si è distinta per le proprie azioni green sul territorio
- *Premio RecycleWay 2018* - Riconoscimento conferito all’associazione no-profit che più è stata innovativa nei campi del riciclaggio e dello smaltimento dei rifiuti
- *Medaglia di Legno (Edizione 2021 e 2022)* - Riconoscimento per l’organizzazione del più grande ritrovo sportivo e raccolta rifiuti d’Italia

#### **********************************Vieni a trovarci!**********************************

Tum4World è presente sul territorio italiano in diverse sedi:

- Trento - via Degli Alberi, 100
- Milano - via Verde, 3
- Roma - via Foglia Gialla, 20
- Napoli - via Mare Blu, 5

…ed in arrivo molte altre!

## Attività

Tum4World offre diverse attività svolte durante tutto l’anno presso le città in cui ha sede. 

### Waste is Fun!

Con l’attività “Waste is Fun!”, Tum4World vuole promuovere la buona pratica del riciclaggio ♻️ e del corretto smaltimento dei rifiuti, oltre che a sviluppare una maggiore consapevolezza nei cittadini.

L’attività consiste in una gara di raccolta rifiuti che si svolge a squadre per le strade, parchi e spiagge delle nostre città. Ogni membro di una squadra verrà munito di tutto il necessario per raccogliere e smistare i rifiuti abbandonati e dovrà raccoglierne il più possibile per far vincere la propria squadra. 

*Ovviamente non mancano numerosi premi e riconoscimenti…come quello di “Raccoglitore seriale” 🏅.*

### Meet & Green

Con l’attività “Meet & Green”, Tum4World vuole permettere ai propri membri di incontrarsi, scambiarsi idee e cibo! Infatti, oltre a conferenze tenute dagli esperti nei temi più disparati, durante i “Meet & Green” ogni partecipante è invitato a portare una pietanza da condividere con tutti. Questa attività è una delle più amate dai nostri membri in quanto alterna momenti di svago a momenti di discussione, il tutto accompagnato da cibo sano e senza sprechi.

### Mercatino dello scambio

Il settore dell’abbigliamento è uno dei più inquinanti in assoluto, non solo in fase di produzione, ma soprattutto anche in fase di smaltimento dei capi usati. 

Con il “Mercatino dello scambio”, Tum4World vuole combattere l’industria del *fast fashion* ed incentivare lo scambio ed il riutilizzo dei capi d’abbigliamento. 

I partecipanti sono invitati a portare vestiti, scarpe, biancheria per la casa, tutto ciò che non viene più utilizzato e potrebbe trovare una nuova vita nelle mani di un nuovo proprietario. In questo modo

## Contatti

#### Le nostre sedi

Tum4World è presente sul territorio italiano in diverse sedi:

- Trento - via Degli Alberi, 100 (Sede principale)
- Milano - via Verde, 3
- Roma - via Foglia Gialla, 20
- Napoli - via Mare Blu, 5

#### Contattaci!

Telefono ☎️: +39 0461 330033

Email 📧: tum4World@email.com

## Footer

Tum4World - via Degli Alberi, 100 - 33000 Trento, Italia			

## Prima del deploy

Prima di effettuare il Deploy della webapp è necessario:
1. Eseguire la query di creazione del database in locale
	java -jar %PATH_TO_DERBY%/lib/derbyrun.jar ij
	run ‘%PATH_TO_SCRIPT%/script.sql’;
2. Aggiungere, se non presenti, activation.jar e javax.mail.jar in %TOMCAT_HOME%/lib (xxamp)
3. Aggiungere gli stessi due file ai Modules del progetto:
	File -> Project Structure -> Modules -> +
4. Aggiungere tramite Intellij i file .csv alle relative tabelle

