#!/root/.rbenv/shims/ruby
#encoding:utf-8

# Méthode des conditions de jeu
# Cette méthode gère les conditions de jeu en fonction de la valeur du dé
# et du niveau actuel du joueur.
# Elle est appelée à chaque tour de jeu pour mettre à jour le niveau
# et afficher les messages appropriés.
def conditions_game(level, value)
	# Conditions des différentes situations du jeu
   
  case value
  when 5, 6
    level += 1
    if level == 10
      puts "Bravo! Vous avez atteint le plus haut niveau : #{level}"
      return level, true  # Indique que le joueur a gagné
    else
      puts "Avancez d'une marche."
      puts "Vous êtes maintenant au niveau #{level}"
    end
  when 1
    level -= 1
    if level.negative?
      level = 0
      puts "Vous êtes au niveau #{level}"
    else
      puts "Descendez d'une marche."
      puts "Vous êtes maintenant au niveau #{level}"
    end
  else
    puts "N'avancez ni ne descendez."
    puts "Vous êtes au niveau #{level}"
  end
  
  return level, false  # Retourne le niveau et indique que le jeu continue
end

# Boucle infinie pour le jeu
def game_loop(level = 0)
  game_won = false
  
  until game_won
    puts "Lancez du dé."
    value = 1 + rand(6)  # Pour obtenir une valeur par hasard
    puts "Vous avez obtenu : #{value}"
    
    # Appel de la méthode pour gérer les conditions de jeu
    level, game_won = conditions_game(level, value)
    
    unless game_won
      puts "1. Relancer / 0. Quitter"
      answer = gets.chomp.to_i
      return if answer.zero?  # Sortir de la méthode si le joueur choisit de quitter
    end
  end
  
  level  # Retourne le niveau final
end

# Méthode principale du jeu
def stairs
  puts "Bienvenue au jeu des escaliers."
  puts "Vous êtes au niveau 0 et vous devez atteindre le niveau 10 pour gagner."
  puts "Voulez-vous jouer ? (1. Jouer / 0. Quitter)"
  answer = gets.chomp.to_i
  loop do
    break if answer.zero?
    
    level = 0  # Le joueur commence au niveau 0
    game_loop(level)
    
    puts "Souhaitez-vous rejouer une partie ? (1. Oui / 0. Non)"
    replay = gets.chomp.to_i
    break if replay.zero?
  end
  
  puts "Merci d'avoir joué au jeu des escaliers!"
end

# Méthode pour calculer le nombre moyen de tours pour atteindre la 10ème marche
def average_finish_time
  total_turns = 0
  simulations = 100

  simulations.times do
    level = 0
    turns = 0

    while level < 10
      value = 1 + rand(6)
      case value
      when 5..6
        level += 1
      when 1
        level -= 1 if level > 0
      end
      turns += 1
    end

    total_turns += turns
  end

  average_turns = total_turns / simulations.to_f
  puts "Le nombre moyen de tours pour atteindre la 10ème marche est : #{average_turns.round(2)}"
end

# Appel des méthodes
stairs
average_finish_time

