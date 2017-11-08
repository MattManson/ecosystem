class Bear

  def initialize(bear_name)
    @bear_name = bear_name
    @bear_stomach = []
  end

  def bear_name
    return @bear_name
  end

  def bear_stomach_empty
    return @bear_stomach.length
  end

  def eats_fish(fish)
    @bear_stomach.push(fish)
  end

  def stomach_size
    return @bear_stomach.length
  end
end
