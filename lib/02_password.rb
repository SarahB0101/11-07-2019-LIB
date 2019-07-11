def ask_signup
	puts "Entre un nouveau mot de passe"
	print ">"
	mot_passe = gets.chomp
	return mot_passe
end



def login
	mot_passe = ask_signup

	puts "Mot de passe :"
	print ">"
	login = gets.chomp
	

	

	if login == mot_passe
		welcom_screen
	else	
		puts "! ERREUR ! Le mot de passe est incorrect. Essayez à nouveau."
		perform
	end	
	
end



def welcom_screen
	puts " -------------- ! Bienvenue dans la zone secrète ! -------------"
end	



def perform
	login 
end	



perform