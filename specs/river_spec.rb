require("minitest/autorun")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Joseph Salmon")
    fish2 = Fish.new("Gary Salmon")
    fish3 = Fish.new("Sophie Salmon")
    fish4 = Fish.new("Laura Salmon")

    fishes = [fish1, fish2, fish3, fish4]

    @river = River.new("Yukon", fishes)
  end

  def test_get_river_name
    assert_equal("Yukon",@river.name)
  end

  def test_get_fish_population
    assert_equal(4, @river.fish_population().count())
  end

  def test_fish_count
    assert_equal(4, @river.fish_count())
  end

end
