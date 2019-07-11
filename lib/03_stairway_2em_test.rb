=begin
1.lancé de dé  
		1.1 chiffre aléatoire de 1 à 6 
		1.2 fonction "entrer" pour activer chaque tour
2.monter 10 marches en fonction du jet de dé. 
3.		5 ou 6 = +1marche		|		1 = -1marche		|		2 ou 3 ou 4 = reste sur la même marche
4. 10 marche = fin du jeu

=end






# --------- LANCÉ DE DÉ ------------






def roll_dice
	return ((rand(6))+1) #  rand(6) returns a random number from 0 to 5 inclusive -- > dice_roll_result = 1 + rand(6) (1 sinon commence à 0)
	#puts " |---------------- tu as fait un #{result} -----------------|"
	
end





# --------- RÈGLES IMPOSÉES AU LANCÉ DE DÉ ------------





def dice_number (num_dice)
	
	
	if num_dice >= 5 
		puts "Tu montes"
		return 1		

	elsif num_dice == 1  
		puts "Tu descends"
		return -1

	else #(resultat_roll_dice >=2) || (resultat_roll_dice<= 4)
		puts "Tu restes sur la même marche"
		return 0
	end
end







# --------- ANNNONCE DU N° DE MARCHE ------------





def step_play(num) #etape du jeu
	puts "tu es sur la marche n°#{num}"	
end








# --------- FIN DE LA PARTIE ------------





def end_party (num)

	if num == 10
		return true
	else
		return false				
	end	
end





# --------- PLAY ------------






def play
	num_step = 1

	puts " |------------ ------------ ------------ ------------| "	
	puts "|------------------ début du jeu : -------------------| "
	puts " |------------ ------------ ------------ ------------| "
	puts " "	
	puts " "
	puts " |----------- BUT : Monter les 10 marches ------------|"
	puts "|------------ RÈGLES : si le dé tombe sur -------------|"
	puts " |----------------- 1 > Tu descends ------------------|"
	puts "|------------- 2 | 3 | 4 > Tu ne bouges pas -----------|"
	puts " |---------------- 5 | 6 > Tu montes -----------------|"
	puts ""
	puts ""
	step_play(num_step) # affiche : tu es sur la marche n°#{num} >> #{num} remplacé par num_step = 1

	tour = 0 # avant la boucle est à 0 tour

	while (!end_party (num_step)) do
		#puts "Tapes sur la touche 'ENTRÉE' pour lancer le dé"
		#gets.chomp
		
		
		puts " "
		puts " |------------ ------------ ------------ ------------| "
		puts "|------------------- Lancé du dés --------------------| "
		puts " |------------ ------------ ------------ ------------| "

		num_step = num_step + dice_number(roll_dice) #num_step prend les mêmes valeurs que dice_number	
			
		step_play(num_step)

		tour +=1 # apres chaque boucle, le tour prend +1
		
	end


puts 	"_____________________§_§§________§___§_________§§_§ 
		______________________§__§§______§§___§§_______§§_§§
		______________________§§__§§_____§_____§_____§§___§ 
		______________________§§____§§___§______§___§_____§
		__________§§___________§_____§§_§_______§_§§_____§
		__________§_§§_________§_______§§________§_______§_________§§
		__________§___§§_______§_________________________§______§§§_§
		___________§§___§§§____§_________________________§___§§§§__§
		____________§§_____§§§§§________________________§_§§§§____§
		_____________§___________________________________§_______§
		_____________§§_________________________________________§
		______________§§_______________________________________§______§§§§§§§
		__§§____§§§§§§§§_________________________________________________§§
		____§§_________________§§§§§_____________§§§§§§§§§§§§§§§_______§§
		______§§______§§§§§§§§§§§§§§§§§§§__§§§§§§§§§§___§§§§§§§§§§§cd§§
		_______§§§cd§§§§§§§§_________§§§§§§§§§§§§§_______§§§§§§_____§
		_________§§____§§§§__§§§§§§§§§§§§§___§§§__§§§§§§§§§§§§§___§§
		___________§§__§§§§§§§§§§§§§§§§§§____§§§_§§§§§§§§§§§§§§_____§§§§
			______§§§§§_____§§§§§§§§§§§§§§§§§____§§§§§§§§§§§§§§§§§§_________§§§§
		__§§§§§_________§§§§§§§§§§§§§§§§§_____§§§§§§§§§§§§§§§§_____________§§§
		§§§_____________§§§§§§§§§§§§§§§§_______§§§§§§§§§§§§§§§_______§§§§§§§§ 
		______§§§§§§______§§§§§§§§§§§§________§__________________§§
		____________§§_________________§____§§§____§______________§§§
		__________§§___________§§______§§§§§_____§§§§§______________§§
		________§§_______________§§_____________§§§_________§§§§§§§§§§§
		______§§___________________§§§_________§§§§__________§§
		____§§______§§§§_____________§§§§§§§§§§§______________§
		___§§§§§§§§§§__§§________________§§§__________________§§
		______________§§_______________________________________§§
		_____________§§________________________________§§§______§
		____________§§______§§§________________________§§_§§§____§
		____________§____§§§_§§________________________§§____§§§_§
		___________§___§§§___§_______§________§§_______§§_______§§§ 
		__________§_§§§______§_____§§§§_______§_§§______§
		_________§§§_________§____§§__§______§§__§§_____§
		_____________________§___§§___§§_____§_____§§___§
		_____________________§__§§_____§____§§______§§__§
		_____________________§_§§______§§___§_________§§§
		_____________________§_§________§___§__________§§§
		_____________________§§_________§§_§§____________§
		_____________________§___________§_§
		__________________________________§§
		__________________________________§§"	


	puts " ------- FIN DE PARTIE : tu as monté(e) les 10 marches en #{tour} de tours --------"	
	return tour
end	









# --------- CALCUL DU NOMBRE DE TOUR MOYEN ------------





def average_finish_time
	total_tour = 0

	100.times do
		total_tour = total_tour + play
	end	

	average = total_tour /100
	puts "Sur 100 parties, le nombre de tours moyen pour gagner est de #{average} tours"

end






# --------- LANCEMENT DU PROGRAMME ------------




def perform
	play
	average_finish_time

end	




perform
