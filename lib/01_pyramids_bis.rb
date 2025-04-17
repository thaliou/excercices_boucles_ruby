#!/usr/bin/env ruby
# encoding: utf-8

=begin
Exercice sur les pyramides
3 types de pyramides sont construites :
1. Une moitié de pyramide
2. Une pyramide complète
3. Une pyramide en forme de losange
=end

# Méthode pour afficher la moitié d'une pyramide
def half_pyramid(height)
  height.times do |i|
    puts " " * (height - i - 1) + "#" * (i + 1)
  end
end
# Méthode pour afficher une pyramide complète
def full_pyramid(height)
  height.times do |i|
    puts " " * (height - i - 1) + "#" * (2 * i + 1)
  end
end

# Méthode pour afficher une pyramide en forme de losange
def wtf_pyramid(height)
  # Partie supérieure
  (height - 1).times do |i|
    puts " " * (height - i - 1) + "#" * (2 * i + 1)
  end
  # Partie inférieure
  height.times do |i|
    puts " " * (i) + "#" * (2 * (height - i) - 1)
  end
end

# Programme principal
def main
  # Demande la hauteur de la pyramide
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?  : "
  height = gets.chomp.to_i

  # Affiche la moitié de la pyramide
  puts "Moitié de la pyramide :"
  half_pyramid(height)

  # Affiche la pyramide complète
  puts "Pyramide complète :"
  full_pyramid(height)

  # Affiche la pyramide en forme de losange
  puts "Et Combien d'étages veux-tu pour ta pyramide en losange ? (Choisis un nombre impair)"
  print ">"
  height = gets.chomp.to_i
  ## Vérifie si le nombre entré est impair
  while (height % 2 == 0 || height.positive? || height.even? || height.is_a?(String))
    puts "Ce n'est pas un nombre impair !"
    puts "Combien d'étages veux-tu ? (Choisis un nombre impair)"
    height = gets.chomp.to_i
    exit if height == 0 # Sortie si l'utilisateur entre 0
  end
  ## Affichage
  puts "Voici la pyramide :"
  wtf_pyramid(height)
end

# Appel de la fonction main
main