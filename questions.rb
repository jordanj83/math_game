class Player
  attr_accessor :name, :lives

  def initialize(lives = 3)
    # @name = name
    @lives = lives
  end

  # def alive?
  #   @lives > 0
  # end
end


#test the Player class
# player1=Player.new("nasr")
# puts player1.name
# puts player1.lives
# puts player1.alive
