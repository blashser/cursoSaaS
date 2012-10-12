class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def self.add_currency( new_coin, new_change )
    @@currencies[ String.new new_coin ] = new_change
  end

  def in( arg )
    sing_currency = arg.to_s.gsub( /s$/, '' )
    if @@currencies.has_key? sing_currency
      self / @@currencies[ sing_currency ]
    else
      puts "currency #{sing_currency} is not in the valid list"
      puts "Please add this new currency with class method add_currency( new_coin, new_change )"
      self
    end
  end
end

#---------------test--------------#

#Numeric.add_currency 'dollar', 1.0

print "20.dollars.in :yen "
puts 20.dollars.in :yen

print "1.dollar.in :euros "
puts 1.dollar.in :euros

print "1.euro.in :dollars "
puts 1.euro.in :dollars

print "5.rupee.in :euros "
puts 5.rupee.in :euros

print "15.yen.in :pesos "
puts 15.yen.in :pesos

Numeric.add_currency 'peso', 0.5

print "15.yen.in :pesos "
puts 15.yen.in :pesos

class String
  # YOUR CODE HERE
end

module Enumerable
  # YOUR CODE HERE
end
