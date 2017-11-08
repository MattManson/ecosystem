require("minitest/autorun")
require("minitest/rg")
require_relative("../ecosystem.rb")
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class TestEcoSystem < MiniTest::Test
  def setup
    @river = River.new("Amazon", 200)
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("salmon")

  end

  def test_fish_in_river
    assert_equal(200, @river.fish_in_river)
  end



end
