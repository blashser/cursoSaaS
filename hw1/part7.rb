class CartesianProduct
  include Enumerable

  def initialize( arry1, arry2 )
    @product = []
    unless arry1.empty? || arry2.empty?
      arry1.each do |first|
        arry2.each do |second|
          @product << [ first, second ]
        end
      end
    end
  end

  def each
    product.each do |part|
      yield part
    end
  end

  private
  attr_reader :product
end

