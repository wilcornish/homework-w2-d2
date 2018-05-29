require("minitest/autorun")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Yukon")
  end

  def test_get_river_name
    assert_equal("Yukon",@river.name)
  end

end
