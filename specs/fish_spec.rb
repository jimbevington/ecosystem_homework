require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Haddock")
  end

  def test_fish_name
    assert_equal("Haddock", @fish.name)
  end

end
