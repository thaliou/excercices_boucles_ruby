#!/usr/bin/env ruby
# encoding: utf-8

=begin
Exercices sur les méthodes
1. Créer une méthode qui dit bonjour
2. Créer une méthode qui dit bonjour à une personne
3. Créer une méthode qui demande le prénom de la personne
=end

# Méthode qui dit bonjour

def say_hello
  puts "Bonjour "
end

# Méthode qui dit bonjour à une personne
def say_hello_to(name)
  puts "Bonjour #{name}"
end

# Méthode le prénom de la personne
def ask_first_name
  print "Quel est votre prénom ? : "
  first_name = gets.chomp
  return first_name
end

# Programme principal
def main
  # Dis bonjour
  say_hello
  # Demande le prénom de la personne
  first_name = ask_first_name
  # Dit bonjour à la personne
  say_hello_to(first_name)
end
# Appel de la fonction main
main
