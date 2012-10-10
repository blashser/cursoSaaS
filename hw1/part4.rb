# -*- coding: utf-8 -*-
class Dessert
  def initialize(name, calories)
    @name     = String.new name
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
    super name, calories
    @flavor = String.new flavor
  end
  
  attr_accessor :flavor

  def delicious?
    true unless "black licorice" == flavor
  end
end




