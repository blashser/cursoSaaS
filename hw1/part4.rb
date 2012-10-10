# -*- coding: utf-8 -*-
class Dessert
  def initialize(name, calories)
    print "creando dessert..."
    @name     = name
    @calories = calories
    puts "...dessert creado"
  end

  attr_accessor :name, :calories
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    print "testing delicious in dessert"
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    print "creando jellybean..."
    @name     = name
    @calories = calories
    @flavor   = flavor
    puts "...jellybean creado"
  end
  
  attr_accessor :flavor

  def delicious?
    print "testing delicious in JELLYBEAN"
    true unless "black licorice" == flavor
  end
end

#---------------test---------------#

if __FILE__ == $0

  yogurt = Dessert.new  "Plátano", 180
  pastel = Dessert.new  "Pastel de Queso", 400

  jellybn = JellyBean.new "caramelo", 300, "black licorice"
  nojellb = JellyBean.new "pera", 100, "fruta"

  puts
  [ yogurt, pastel, jellybn, nojellb ].each do |dess|
    puts dess.name
    puts dess.calories
    if dess.healthy? 
      puts " is healthy!" 
    end
    puts " and is DELICIOUS" if dess.delicious?
    puts
  end
end


