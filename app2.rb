require_relative 'lib/game2'
require_relative 'lib/human_player'

def perform 

  ### INTRO ###
  puts "----------------------------------------------------------------------"
  puts " 🐍Bienvenue dans le game 'Harry contre Les mages noir'🐍"
  puts "----------------------------------------------------------------------"
  puts " Le but survivre au raid de Voldemort et ses suivants! "
  puts "----------------------------------------------------------------------"
  puts "            ⣀⣤⠶⠟⠛⠛⠛⠶⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠉⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⣾⣷⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⣾⠟⢉⣀⣀⡈⠃⠀⠀⠒⣉⣀⡀⠈⢻⡄⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⡏⠀⣴⣶⣿⣿⣷⠂⠀⣾⣿⣿⣿⣆⢠⡇⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⢸⣿⠀⠻⠿⢿⡿⠃⣰⣆⠙⣿⡿⠿⠋⠸⣧⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠈⠀⠠⣿⠿⠀⠀⣀⣀⣀⠀⣿⣦⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⣼⣿⣶⣾⣿⣿⡟⢀⠀⠀⠀⢀⢀⢻⣿⣿⣿⣿⢻⡇⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⣇⢸⡇⠻⢿⣿⠇⡜⢸⠀⡇⢸⠘⣼⣿⠿⠉⠙⣿⡇⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⣿⣾⣿⣦⠀⣿⣷⣷⣾⣤⣷⣾⣿⣿⢋⣴⣶⣶⣿⡀⠀⠀⠀⠀⠀
  ⠀⠀⠀⣠⠞⠙⠻⣿⣿⣷⣿⣿⣿⠿⠿⠻⠟⠋⠀⣼⣿⣿⡿⣻⣿⣦⡀⠀⠀⠀
  ⠀⢀⡼⢿⡦⣠⣴⢿⣿⣿⣿⣏⣿⣤⠀⠀⢰⡔⣶⣾⣿⠏⠀⠀⠀⣿⣿⣄⠀⠀
  ⠀⡾⢡⣏⢰⣯⠃⣼⣿⡿⢿⡟⢿⡋⠀⠀⢸⣽⣿⣿⡿⣇⠀⠀⠀⢈⡿⡿⣆⠀
  ⢸⡿⠿⠏⢰⠇⢸⡿⠋⠀⠀⣿⡟⠀⠀⠀⠈⡟⠀⠉⠳⣿⣿⠆⠀⢿⣙⡇⣿⡄
  ⣿⠀⠀⠀⢸⢰⣿⠁⠀⠀⠀⢸⣧⣤⠀⠀⡼⡇⠀⠀⠀⢹⣾⠀⠀⠈⢻⡇⢹⡇
  ⣿⣿⣷⠀⢸⣸⣿⠀⠀⠀⠀⠀⢷⣿⠀⠀⠳⡇⠀⠀⠀⢸⡟⠀⠁⠀⡸⠀⢼⡇
  ⢿⣟⠋⠀⢸⡿⣿⠀⠀⠀⠀⠀⠘⣿⢲⣦⠀⢹⡀⠀⠀⡼⠀⣤⣤⣴⠃⢠⣾⠇
  ⠸⡏⣿⠆⠘⢷⣼⣷⣄⠀⠀⠀⠀⠹⣿⡇⠀⠘⢵⣤⡾⢁⡤⣡⠞⠁⠀⣸⠟⠀
  ⠀⠹⣧⠀⢀⣀⠀⠸⣯⣽⣷⣦⣄⡀⢻⣷⣦⣄⣤⠙⣷⡼⠞⠁⣀⢄⣾⠏⠀⠀
  ⠀⠀⠈⠻⣟⠙⢧⣀⣀⠀⠘⢳⣾⣿⣿⣿⣿⣮⡻⣤⡌⠛⢶⣵⣵⡿⠁⠀⠀⠀
  ⠀⠀⠀⠀⠈⠳⢶⣤⣿⣦⠖⡉⠕⠊⢉⣿⣿⣿⣷⣾⣧⣖⣦⠙⢿⣄⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⣸⠟⠠⠈⠀⢀⣰⣿⣿⣿⣿⣿⣟⢿⣿⣿⣠⡴⢮⢳⣄⠀⠀
  ⠀⠀⠀⠀⠀⠀⣼⡫⠂⠀⠀⠀⣶⡿⣿⣿⣿⠁⠘⢿⣆⠙⣿⣿⣅⢺⡇⠛⢷⡄
  ⠀⠀⠀⠀⠀⢰⣿⠁⠀⠀⠀⣼⠏⠀⠈⢿⣿⠀⠀⢀⣿⠀⢸⣿⢿⣿⣷⢺⡆⣿
  ⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⢰⣿⠀⠀⠀⠈⣏⢻⡇⢷⣾⡇⢸⣿⠃⠘⢿⣼⣧⣿
  ⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⢉⢿⣆⠀⠀⠀⣿⡟⠀⠀⢹⣷⣿⡏⠀⠀⢽⣿⣿⠏
  ⠀⠀⠀⠀⠀⠀⢻⡆⠀⠀⠀⠸⢻⢿⣶⣶⣿⢻⡆⢀⣼⣿⠏⠀⠀⣠⣹⣿⠋⠀
  ⠀⠀⠀⠀⠀⠀⠀⠻⣷⣀⣀⠀⠈⠈⠘⣿⡇⡿⠃⣸⢸⣿⢀⣠⣦⡿⠛⠁⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⠶⣤⣴⣾⣿⣠⡇⠐⣇⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢉⣿⠁⠀⠀⣹⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣧⡀⠀⣀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⢧⡟⠁⣾⢻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠞⠃⢠⣆⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡄⠀⡀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⣼⠋⣸⢹⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣷⠿⠀⢫⣾⠁⠀⠀⠀⡠⠚⢉⣉⠓⣦⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⢰⡟⠀⠀⢀⣼⢱⣿⣾⣿⣷⣼⡄⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣆⠀⢠⣾⠇⠀⣼⡥⢃⣾⣿⣿⣿⡟⠈⠻⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⡿⠂⢸⣸⠀⢰⣏⠔⠛⠛⢻⣿⣿⣧⢠⡄⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⡇⠀⠘⢿⡆⠸⣇⠀⠀⠀⠀⠈⠉⠉⣩⠇⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣷⣦⡄⠸⣷⡀⢹⣷⠄⠀⠀⢠⣤⠾⠃⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡍⠳⠤⠾⠿⠛⠁⠀⠀⣨⡿⠁⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣄⠀⠀⠀⠀⢀⠀⢤⡾⠁⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⠦⣴⣴⣶⠶⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀"

  ### INITIALISATION DU JOUEUR ###
  puts
  puts "Salut ! Quel est ton nom jeune Sorcier ?"
  print "> "
  human_name = gets.chomp 
  human_player = HumanPlayer.new(human_name)

  ### INITIALISATION DES MANGEMORTS ###
  wizard1 = Player.new("Mangemorts")
  wizard2 = Player.new("Voldemort")
  wizards = [wizard1, wizard2]
  
  puts
  puts "⚔️⚔️⚔️  Bienvenue #{human_player.name}. Tu as l'honneur de combattre contre #{wizard2.name} et ses#{wizard1.name} ! ⚔️⚔️⚔️"
  puts 
  puts "En garde, #{human_player.name} !"
  puts 

  # PARAMETRAGE DU MENU
  def menu(wizard1, wizard2) 
    puts
    puts "C'est à ton tour. Quelle action veux-tu effectuer ?"
    puts 
    puts "a - chercher une meilleure baguette✨"
    puts "s - chercher une potion ⚗️"
    puts "1 - attaquer #{wizard1.name} 🐍"
    puts "2 - attaquer #{wizard2.name} 🐍"
    puts
    print "> "
    user_choice = gets.chomp.to_s
  end

  ### EXECUTION DU COMBAT ###
  while human_player.life_points > 0 && (wizard1.life_points > 0 || wizard2.life_points > 0) do
    puts
    puts "-----------------------------------"
    puts "Voici l'état de chaque combattant :"
    human_player.show_state
    wizard1.show_state
    wizard2.show_state
    puts

    ### TRANSITION ###
    puts "Appuie sur la touche ENTER pour exécuter le prochain round" 
    print "> "
    gets.chomp
    puts

    puts "LET'S FIGHT ! ⚔️ "

    ### HUMAN_PLAYER JOUE EN PREMIER A CHAQUE ROUND ###

    case menu(wizard1, wizard2)
      when "a"
        human_player.search_weapon
      when "s"
        human_player.search_health_pack
      when "1"
        human_player.attacks(wizard1)
      when "2"
        human_player.attacks(wizard2)
      else 
        puts "~Utilisation du Retourneur de temps~ Entre une action de defense contre le Mal!"
        user_choice = gets.chomp.to_s #autre solution >>> "next" pour retour au début de la boucle !
    end

    ### TRANSITION ###
    puts 
    puts "Appuie sur la touche ENTER pour continuer le combat" 
    print "> "
    gets.chomp
    puts

    #### ATTAQUE DES MANGEMORTS ###
    puts "C'est au tour des Mangemorts d'attaquer !"
    puts
    wizards.each do |wizard| 
      if wizard.life_points > 0 #attaque d'un wizard seulement s'il est encore en vie
        wizard.attacks(human_player)
      else
        wizard.show_state
      end
    end

    if human_player.life_points <= 0
      human_player.show_state
      puts "🖤🐍♡.⚕️"
      puts "Voldemort et ses Mangemorts t'ont vaincu!"
      break
    end

    if wizard1.life_points <= 0 && wizard2.life_points <= 0
      puts
      puts "🏆 Tous les Mangemorts sont à terre. Victoire du Monde sorcier!🏆"
      puts"
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠘⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⠏⣠⡂⠙⣿⣷⠘⣿⣏⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⡼⠃⢨⠟⠁⠀⠈⠻⢧⡈⠻⣆⠻⣿⡈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠸⣷⣶⣤⣤⣄⠀⠀⠀⣤⣿⣷⣿⣯⡁⠉⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⣿⣿⣿⢿⣿⣧⣀⣐⡿⠟⠻⠟⠛⠙⣦⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢻⡄⠀⠉⠁⠀⠀⣹⠀⢸⡀⠀⠀⠀⠀⠀⡼⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠱⣄⡀⠀⢀⣴⠃⠀⠀⠳⣄⡀⠀⣀⠴⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠉⠉⠁⠸⣀⠀⠀⠀⠀⠈⠉⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⢀⡀⠀⠉⠃⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⢰⡀⠀⠀⠉⠉⠭⠭⠉⠉⠀⠀⣠⣾⣿⡏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠈⢿⣶⣄⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠈⠛⠿⢿⣷⣶⣶⡶⠟⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⣀⣼⣿⣶⣶⣦⣄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⣠⣾⢻⣿⣿⣿⡿⠟⠛⠋⠉⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠼⠛⠁⢸⣿⣿⣿⡄⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⣸⣿⣿⣿⣧⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⣿⣿⣿⣿⣿⡆⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
			⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
				"
      break
    end

    puts 
    puts "Appuie sur la touche ENTER pour continuer le combat" 
    print "> "
    gets.chomp
    puts

  end
end
perform