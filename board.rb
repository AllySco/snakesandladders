
class Board

  attr_reader :grid, :player_array

  def initialize()
    @grid = [0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0,
             0, 0, 0, 0, 0, 0, -10, 0, 0, 0, 0]
    @player_array = []

  end

  def add_player(new_player)
    @player_array << new_player
  end

  def take_turn(player, die_roll)
    index = player.position + die_roll
    new_position = @grid[index] + index
    player.position = new_position
    if player.position >= 20
      return true
    else
      @player_array.rotate!
    end
  end
      
end