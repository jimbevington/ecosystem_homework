require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Clyde")
  end

  def test_river_name
    assert_equal("Clyde", @river.name)
  end

  def test_river_has_fish
    assert_equal(4, @river.count_fish)
  end

  def test_river_copy
    fish_copy = @river.fish_copy
    assert_equal(4, fish_copy.count)
  end

  def test_can_remove_fish
    @river.remove_fish()
    assert_equal(3, @river.count_fish)
  end

  # def test_lose_fish
  #   @river.lose_fish
  #   assert_equal(3, @river.count_fish)
  # end

end
