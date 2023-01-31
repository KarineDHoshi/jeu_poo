require_relative 'game'
class Player < Game

  
  attr_accessor :name, :life_points 

  def initialize(name)
    @name = name.to_s
    @life_points = 10
  end

 

end


