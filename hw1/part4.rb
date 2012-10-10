# -*- coding: utf-8 -*-
class Dessert
  def initialize(name, calories)
    puts "creando dessert"
    @name     = name
    @calories = calories
    puts "dessert creado"
  end

  attr_accessor :name, :calories
  
  def healthy?
    puts "hola healthy"
    @calories < 200
  end
  
  def delicious?
    puts "testing delicious in dessert"
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    puts "creando jellybean"
    @name     = name
    @calories = calories
    @flavor   = flavor
    puts "jellybean creado"
  end
  
  attr_accessor :flavor

  def delicious?
    puts "testing delicious in JELLYBEAN"
    true unless "black licorice" == flavor
  end
end

#---------------test---------------#

if __FILE__ == $0

  yogurt = Dessert.new  180,"Plátano"
  pastel = Dessert.new "Pastel de Queso", 400

  jellybn = JellyBean.new "caramelo", 300, "black licorice"
  nojellb = JellyBean.new "pera", 100, "fruta"

  print "jellybn"
  if jellybn.delicious? 
    puts " is delicious!"
  else
    puts " is NOT delicious!"
  end

  print "nojellybn"
  if nojellb.delicious? 
    puts " is delicious!"
  else
    puts " is NOT delicious!"
  end

end


