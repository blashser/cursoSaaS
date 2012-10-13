class CartesianProduct
  include Enumerable

  attr_accessor :product

  def initialize( arry1, arry2 )
    unless arry1.empty? || arry2.empty?
      @product = []
      arry1.each do |first|
        arry2.each do |second|
          @product << [ first, second ]
        end
      end
    end
  end
end


#----------test----------#

array_nulo  = []
array_corto = [ 3, "casa" ]
array_largo = [ :who, 25, [ 3, { 2 => "cinco", :jo => 20} ], 'nino' ]

ab = CartesianProduct.new array_corto, array_largo

puts ab.product.inspect

bc = CartesianProduct.new array_nulo, array_corto

puts bc.product.inspect

cd = CartesianProduct.new array_largo, array_nulo

puts cd.product.inspect
