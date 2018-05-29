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

end
