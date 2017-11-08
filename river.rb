class River

  def initialize(river_name, fish_in_river)
    @river_name = river_name
    @fish_in_river = fish_in_river
  end

  def fish_in_river
    return @fish_in_river
  end

  def river_name
    return @river_name
  end

  def loses_fish(fish)
    @fish_in_river -= fish.length
  end

  def new_fish_number
    return @fish_in_river
  end

end
