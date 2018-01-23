# scrapping-googlesheet-mailing
 gmail
# etape pour lancer le prog : 
1 - remplacer le "config.json" dans votre folder
2 - Remplacer la key (pour la spreadsheet) 
3 - Entrez vos logs dans le fichier gmail.rb " Gmail.connect("", "")" (Ligne 13)
(pour tester le programme mairies-mailElo.rb vous pouvez utiliser vos logs + votre spreadsheet et config.json)
=== OU ===
1 - placer le fichier mairies-mailElo.rb dans un dossier lancer mairies-mailElo.rb premiere fois : entrez vos credentials
2 - relancer gmail.rb
vous devez avoir une google spreadsheet valide de type : 
https://docs.google.com/spreadsheets/d/1f_aDUwBM57EnMAoiqRpZifR2dcLJzLHaBF49ap5WuHY/edit#gid=0
# Le programme marche avec 3 prog:
# 1 - mairies-scrapElo.rb : 
  Scrap les emails sur le site de la mairie du Val d'oise et les encapsule dans un Hash
# 2 - mairies-uploadElo.rb : 
Note : penser à remplacer le "config.json" dans votre folder + key google spreadsheet correspondante
  Prends le Hash de scrap_mairies.rb et upload chacun des adresses dans une google spreadsheet
# 3 - mairies-mailElo.rb
Note : penser à remplacer le "config.json" dans votre folder + key (ligne 11) + entrez vos logs dans " Gmail.connect("", "")" (ligne : 13)
  accede à la google spreadsheet (with a key) et envoi un email à chacun des adresses mails.
https://docs.google.com/spreadsheets/d/1f_aDUwBM57EnMAoiqRpZifR2dcLJzLHaBF49ap5WuHY/edit#gid=0
les emails dans la spreadsheet viennent d'un faux compte gmail (pour ne pas spammer les mails des mairies)
