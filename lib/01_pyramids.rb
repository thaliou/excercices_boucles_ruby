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
  (height / 2 + 1).times do |i|
    puts " " * (height / 2 - i) + "#" * (2 * i + 1)
  end
  # Partie inférieure
  (height / 2).times do |i|
    puts " " * (i + 1) + "#" * (height - 2 * (i + 1))
  end
end

# Méthode pour obtenir une hauteur impaire valide
def get_odd_height
  loop do
    print "Combien d'étages veux-tu ? (Choisis un nombre impair) : "
    height = gets.chomp.to_i
    if height.positive? && height.odd?
      return height
    else
      puts "Veuillez entrer un nombre impair positif."
    end
  end
end

# Programme principal
def main
  # Demande la hauteur de la pyramide
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? : "
  height = gets.chomp.to_i

  # Affiche la moitié de la pyramide
  puts "Moitié de la pyramide :"
  half_pyramid(height)

  # Affiche la pyramide complète
  puts "Pyramide complète :"
  full_pyramid(height)

  # Affiche la pyramide en forme de losange
  puts "Et maintenant, pour la pyramide en losange :"
  height = get_odd_height
  puts "Voici la pyramide :"
  wtf_pyramid(height)
end

# Appel de la fonction main
main