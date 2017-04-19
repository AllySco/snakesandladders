require('minitest/autorun')
require('minitest/rg')
require_relative('../fake_die.rb')

class TestFakeDie < MiniTest::Test

  def test_die_roll
    die = FakeDie.new()
    assert_equal(1, die.die_roll())
  end




end