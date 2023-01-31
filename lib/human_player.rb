
class Player < Game2

  
    attr_accessor :name, :life_points 
  
    def initialize(name)
      @name = name.to_s
      @life_points = 30
    end
  
   
  
  end
class HumanPlayer < Player
    attr_accessor :weapon_level # /!\ penser à appeler les attributs qui différent de ceux de la classe mère

    def initialize(name) #paramétrage de l'objet spécifique Human
        super(name)
        @life_points = 100 
        @weapon_level = 1
    end
  end