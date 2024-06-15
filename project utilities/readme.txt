Prima di effettuare il Deploy della webapp è necessario:
1. Eseguire la query di creazione del database in locale
	java -jar %PATH_TO_DERBY%/lib/derbyrun.jar ij
	run ‘%PATH_TO_SCRIPT%/script.sql’;
2. Aggiungere tramite Intellij i file .csv alle relative tabelle
