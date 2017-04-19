require('minitest/autorun')
require('minitest/rg')
require_relative('../die.rb')

class TestDie < MiniTest::Test

  def test_die_roll
    die = Die.new(1)
    assert_equal(1, die.number())
  end




end