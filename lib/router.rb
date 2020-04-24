require 'bundler'
Bundler.require

require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Bienvenue dans the Gossip Project !"
    while true
      puts "Dis-moi jeune comère, que veux tu faire ?"
      puts "1 - Créer un gossip"
      puts "4 - Quitter l'application"
      choice = gets.chomp.to_i
      case choice
      when 1
        puts "create a gossip"
      when 4
        puts "leave the app"
        break
      else
        puts "Ce choix n'existe pas LOL, essaye encore !"
      end #boucle case when

    end #boucle while true
  end

end