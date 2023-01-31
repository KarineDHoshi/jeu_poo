class Game2 

    
    def show_state
        if @life_points <= 0
          puts "Sorry #{@name}, you'r dead ! ☠️"
        else 
          puts "* Hey #{@name}, tu as #{@life_points} points de vie ❤️  et une arme de niveau #{@weapon_level.to_i} "
        end
    end
    
    def compute_damage
        return rand(1..15)
        
    end 

    def gets_damage(damage_points)
        @life_points -= damage_points
    end
      
    def attacks(player_to_attack)
        puts "#{@name} attaque #{player_to_attack.name} 👊"
        attack_damage = compute_damage
    
        puts "#{@name} inflige #{attack_damage} points de dommages à #{player_to_attack.name} "
        player_to_attack.gets_damage(attack_damage)
    end

    def search_weapon
        new_weapon_level = rand(1..3)
        puts "Bravo #{@name}, tu as trouvé une arme de niveau #{new_weapon_level}"
        if new_weapon_level > @weapon_level
          @weapon_level = new_weapon_level
          puts "Youhou ! La baguette trouvée est meilleure que celle que tu as actuellement, elle est a toi pour le reste de la bataille!"
        else
          puts "Zut, la baguette trouvée est en lambeaux."
        end
    end
    
    def search_health_pack
        health_pack = rand(1..6)
        if health_pack <= 3 #comparaison d'une variable avec le résultat souhaité
          puts "Zut #{@name}, tu n'as rien trouvé !"
        elsif health_pack >= 4 && health_pack <= 5 
          puts "Cool #{@name}, tu as trouvé un pack de +10 points de vie ⚗️!"
          @life_points += 10
        elsif health_pack == 6
          puts "Waow #{@name}, tu as trouvé un pack de +20 points de vie ⚗️!"
          @life_points += 20
        end
        @life_points = 30 if @life_points > 30
    end 

       
end