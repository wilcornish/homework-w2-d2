class Bear

  attr_reader(:name, :type, :stomach)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count
    @stomach.count
  end

  def eat(river)
    eaten_fish = river.fish_population().sample()
    @stomach.push(eaten_fish)
    river.fish_population().delete(eaten_fish)
  end

  def roar
    return "Roar"
  end

end
