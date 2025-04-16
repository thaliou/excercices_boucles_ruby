#!/root/.rbenv/shims/ruby
#encoding:utf-8

#Methode pour recuperer un mot de pass cree par l utilisateur.
def sign_up
    puts "Veuillez creer un mot de pass."
    pass = gets.chomp.to_sym
    puts "Votre compte a bien ete cree."
    return pass
end

#Methode pour se connecter 
def login
    puts "Veuillez saisir votre pass pour vous connecter."
    pass = gets.chomp.to_sym
    return pass
end

#Methode pour l ecran de bienvenu
def welcome_screen
   puts "Bienvenu dans votre zone secrete."
end

#Methode d'execution principale
def perform
#Creation de mot de pass
sign_up_pass = sign_up

#Connection avec mot de pass cree
login_pass = login

#Comparaison des deux mots de pass crees et saisis
while sign_up_pass.object_id != login_pass.object_id
    puts "Le mot de pass que vous avez entre est incorrect."
    puts "Veuillez saisir votre pass(Appuyez 0 pour quitter)."
    login_pass = login
    exit if login_pass.to_s == "0"
end

#Le message de bienvenu en cas de connexion reussie
welcome_screen
end

#Execution de la methode principale 
perform

