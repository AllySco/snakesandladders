require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')

class TestPlayer < MiniTest::Test

def test_get_player_details
  player1 = Player.new("Paul", 0)
  assert_equal(0, player1.position)
  assert_equal("Paul", player1.name)
end










end