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

  def test_river_name
    assert_equal("Amazon", @river.river_name)
  end

  def test_fish_name
    assert_equal("salmon", @fish1.fish_name)
  end

  def test_bear_name
    assert_equal("Yogi",@bear.bear_name)
  end

  def test_bear_stomach
    assert_equal(0, @bear.bear_stomach_empty)
  end

  def test_bear_eats_fish
    @bear.eats_fish(@fish1)
    assert_equal(1, @bear.stomach_size)
  end

  def test_river_loses_fish
    @river.loses_fish([@fish1])
    assert_equal(199, @river.new_fish_number)
  end

  def test_bear_ate_fish_river_contents
    result1 = @bear.eats_fish(@fish1)
    result2 = @river.loses_fish([@fish1])
    assert_equal(1, @bear.stomach_size)
    assert_equal(199, result2)

  end

  # def test_bear_went_hungry

end
