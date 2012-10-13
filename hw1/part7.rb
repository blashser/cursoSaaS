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
