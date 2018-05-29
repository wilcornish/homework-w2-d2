require("minitest/autorun")
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup

    fish1 = Fish.new("Joseph Salmon")
    fish2 = Fish.new("Gary Salmon")
    fish3 = Fish.new("Sophie Salmon")
    fish4 = Fish.new("Laura Salmon")

    fishes = [fish1, fish2, fish3, fish4]

    @river = River.new("Yukon", fishes)

    @bear = Bear.new("Grünhilde", "Grizzly")
  end

  def test_get_bear_name
    assert_equal("Grünhilde", @bear.name())
  end

  def test_get_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_get_stomach_count
    assert_equal(0, @bear.stomach().count())
    refute_nil(@bear.stomach().count())
  end

  def test_food_count
    assert_equal(0, @bear.food_count())
  end

  def test_get_fish_from_river
    @bear.eat(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(3, @river.fish_count())
  end

  def test_bear_can_roar
    assert_equal("Roar", @bear.roar())
  end

end
