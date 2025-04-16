#!/root/.rbenv/shims/ruby
#encoding:utf-8

#Methode de jeux
def stairs
    puts "Bienvenu au jeu des escaliers."
    puts "Vous etes au niveau 0 et vous devez atteindre le niveau 10 pour gagner."
    puts "Voulez-vous jouer ? (1.Jouer/0.Quitter)"
    answer = gets.chomp.to_i
    level = 0
    #Boucle infini pour le jeu
    loop do 
	#Quitter si answer = 0
	exit if answer.zero?

	#Jouer si answer = 1
	puts "Lancez le dee."
	value = 1+rand(6) #Pour obtenir une valeur par hasard
	#Conditions des differentes situations du jeu
	case value
	    when 5..6
		level += 1 
		if level == 10
		    puts "Bravo! Vous avez atteint le plus haut niveau : #{level}"
		    break
		end
		puts "Avancez d'une marche."
		puts "Vous etes maintenant au niveau #{level}" 
		
	    when 1 
                level -= 1
		if level.negative?
		    level = 0
		    puts "Vous etes maintenant au niveau #{level}"
		    break
		end
                puts "Descendez d'une marche."
                puts "Vous etes maintenant au niveau #{level}"

	    else 
                puts "N'avancez ni ne descendez."
                puts "Vous etes au niveau #{level}"
	end
        puts "Souhaitez-vous continuer ?"
        puts "1.Jouer/0.Quitter"    
    	answer = gets.chomp.to_i
    end
end


stairs 
    
