
def wtf_pyramid

	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	etage = gets.to_i



	if (etage >= 1) && (etage <= 25) && (etage %2 ==0)
		puts "Voici la pyramide :"

		1.upto(etage) do |i| # de 1 à valeur donnée par l'utilisateur

			espace = (etage - i) /2 # espace vaut la valeur etage - i qui vaut au départ 1
						  		# ex : espace = 12(etage)-1(i qui augmente de 1) = 11 espace
			
			espace.times do		
				print " " #on fait comme i on imprime autant d'espace
			end


			i.times do
				print "#"
			end


			puts ""

		end


		etage.downto(1) do |i| # de la valeur donnée par l'utilisateur à 1

			espace = (etage - i) /2 # espace vaut la valeur etage - i qui vaut au départ 1
						  		# ex : espace = 12(etage)-1(i qui augmente de 1) = 11 espace
			
			espace.times do		
				print " " #on fait comme i on imprime autant d'espace
			end


			i.times do
				print "#"
			end
			
			puts ""
		
		end

	else
		puts "Entre plutot un chiffre pair :)"	

	end



end

wtf_pyramid