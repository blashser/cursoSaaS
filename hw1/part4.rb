# -*- coding: utf-8 -*-
class Dessert
  def initialize(name, calories)
    @name     = name
    @calories = calories
  end

  attr_accessor :name, :calories
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
  end
  
  def delicious?
    # YOUR CODE HERE
  end
end

#---------------test---------------#

if __FILE__ == $0

  yogurt = Dessert.new "Plátano", 180
  pastel = Dessert.new "Pastel de Queso", 400

end


