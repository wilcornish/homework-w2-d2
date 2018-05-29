class River

  attr_reader(:name, :fish_population)

  def initialize(name)
    @name = name
    @fish_population = []
  end

end
