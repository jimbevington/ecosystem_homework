class Bear
  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count()
    return @stomach.count
  end

  def take_fish(river)
    fish = river.fish_copy
    @stomach.push(fish[-1]) # Always takes first fish
    river.lose_fish
  end

  def roar
    return "Grrr!!!"
  end

end
