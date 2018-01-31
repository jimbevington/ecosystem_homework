class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_in_river = [
      fish1 = Fish.new("Haddock"),
      fish2 = Fish.new("Salmon"),
      fish3 = Fish.new("Herring"),
      fish4 = Fish.new("Sardine")
    ]
  end

  def count_fish()
    return @fish_in_river.count
  end

  def fish_copy
    copy = @fish_in_river
    return copy
  end

  def remove_fish()
    return @fish_in_river.pop() # returns the item that is popped
  end

  # def lose_fish()
  #   @fish_in_river.pop
  # end

end
