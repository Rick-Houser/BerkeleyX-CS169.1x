class Dessert

  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 400 ? true : false
  end

  def delicious?
    true if @flavor != "licorice"
  end
end

class JellyBean < Dessert

  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end
end
