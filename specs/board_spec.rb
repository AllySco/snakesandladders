require('minitest/autorun')
require('minitest/rg')
require_relative('../fake_die.rb')
require_relative('../player.rb')
require_relative('../board.rb')

class TestBoard < MiniTest::Test

  def test_array_first_ladder_location
    board = Board.new()
    assert_equal(+10, board.grid[4])
  end

  def test_add_player_to_game
    player = Player.new("Ali", 0)
    board = Board.new()
    board.add_player(player)
    assert_equal(player, board.player_array.pop())
  end

  def test_take_turn
    player = Player.new("Ali", 1)
    board = Board.new()
    board.add_player(player)
    board.take_turn(player, 1)
    assert_equal(2, player.position)
  end


  def test_land_on_ladder
    player = Player.new("Ali", 3)
    board = Board.new()
    board.add_player(player)
    board.take_turn(player, 1)
    assert_equal(14, player.position)
  end

  def test_land_on_snake
    player = Player.new("Ali", 16)
    board = Board.new()
    board.add_player(player)
    board.take_turn(player, 1)
    assert_equal(7, player.position)
  end

  def test_player_rotates_after_turn
    player1 = Player.new("Ali", 1)
    player2 = Player.new("Paul", 5)
    board = Board.new()
    board.add_player(player1)
    board.add_player(player2)
    board.take_turn(player1, 1)
    assert_equal(player2, board.player_array[0])
  end

  def test_player_wins_game
    player = Player.new("Ali", 19)
    board = Board.new()
    board.add_player(player)
    winner = board.take_turn(player, 1)
    assert_equal(true, winner)
  end



















  # inc player_pos by die roll
  # check player pos against grid






end