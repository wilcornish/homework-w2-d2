require("minitest/autorun")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Joseph Salmon")
  end

  def test_get_fish_name
    assert_equal("Joseph Salmon", @fish1.name)
  end

end
