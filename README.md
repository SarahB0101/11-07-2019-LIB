# 11-07-2019-LIB


#00_hello.rb est un programme qui demande le prénom de la personne et qui lui dit bonjour.
  #1. On demande à l'utilisateur d'entrée son nom
  #2 le programme l'ajoute à la valeur "bonjour"




#01_pyramids-b.rb est un programme qui fonctionne en plusieurs étapes :
  #1. Il demande à l'utilisateur combien il veut d'étages.
  #2. Il crée une première pyramide dans un sens :
    # 2.1. upto(etage) permet de faire de 1 à X étages donnés par l'utilisateurs
    # 2.2 Puis le programme imprime des espaces vide  --> espace = (etage - i) /2 (i qui vaut 1 au départ)
    # 2?3 enfin il imprime "i.times" les ### qui formeront la pyramyde
 
  #3. Il crée ensuite la même pyramide dans l'autre sens avec etage.downto(1)
  
  
  
  
 
#02_password.rb est un programme qui demande à l'utilisateur un mp pour atteindre une zone secrète
  #1 Il demande de créer un nouveau mot de passe (qui est enregistré)
  #2 Il demande d'entrer le mot de passe créé
  #3 Si le mp est correct il lui permet débloque la méthode welcom_screen et affiche le message secret
  #3 Si le mp est mauvais, un message d'erreur apparait, il faut renouveler les étapes.
  
  
  
#03_stairway_2em_test.rb est un programme qui permet de jouer au dé
  #1. Le programme souhaite la bienvenu à l'utilisateur et explique les règles.
  #2 Il "lance le dé à l'aide d'un random entre 1 et 6 puis applique les règles
  #3 Une méthode permet de donner les règles au programme comme "si le numbre tiré est supérieur à 5 >> tu montes d'une marche.
  #4 une méthode est conçue spécialement pour la fin du jeu : Si le nombre atteint ==10 alors le jeu est fini.
  #5 Enfin une partie stat est ajoutée où on lance 100 fois le jeu + on récupère le nombre de de lancé de dé pour faire une moyenne du nombre de tour moyen qu'il faut pour gagner une partie.
  
