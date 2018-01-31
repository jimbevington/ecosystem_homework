class Bear
  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count()
    return @stomach.compact.count
  end

  # from HOMEWORK REVIEEW
  def eat_fish(fish)
    @stomach.push(fish)
  end

  # MY VERSION, where you SPECIFY a RIVER
  # def take_fish(river)
  #   fish = river.fish_copy
  #   @stomach.push(fish[-1]) # Always takes last fish
  #   river.lose_fish
  # end
  #

  def roar
    return "Grrr!!!"
  end

end
