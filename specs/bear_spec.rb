require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @river = River.new("Amazon")
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_stomach__empty
    assert_equal(0, @bear.food_count)
  end

  def test_bear_eat_fish
    fish = Fish.new("Lunch")
    @bear.eat_fish(fish)
    assert_equal(1, @bear.food_count)
  end

  # VERSION from HOMEWORK REVIIEW, don't spec river
  def test_bear_eat_fish_from_river
    @bear.eat_fish(@river.remove_fish())
    assert_equal(1, @bear.food_count)
    assert_equal(3, @river.count_fish)
  end

  # MY VERSION, where you specify a river
  # def test_bear_takes_fish
  #   @bear.take_fish(@river)
  #   assert_equal(1, @bear.food_count)
  #   assert_equal(3, @river.count_fish)
  # end

  def test_bear_roar
    assert_equal("Grrr!!!", @bear.roar)
  end

end
