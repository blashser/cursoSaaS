# -*- coding: utf-8 -*-
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

  def variations_a_es( str )
    str = str.gsub( /á/, "a" )
    str = str.gsub( /à/, "a" )
    str = str.gsub( /ä/, "a" )
    str = str.gsub( /Á/, "a" )
    str = str.gsub( /À/, "a" )
    str = str.gsub( /Ä/, "a" )
  end

  def variations_e_es( str )
    str = str.gsub( /é/, "e" )
    str = str.gsub( /è/, "e" )
    str = str.gsub( /ë/, "e" )
    str = str.gsub( /É/, "e" )
    str = str.gsub( /È/, "e" )
    str = str.gsub( /Ë/, "e" )
  end

  def variations_i_es( str )
    str = str.gsub( /í/, "i" )
    str = str.gsub( /ì/, "i" )
    str = str.gsub( /ï/, "i" )
    str = str.gsub( /Í/, "i" )
    str = str.gsub( /Ì/, "i" )
    str = str.gsub( /Ï/, "i" )
  end

  def variations_o_es( str )
    str = str.gsub( /ó/, "o" )
    str = str.gsub( /ò/, "o" )
    str = str.gsub( /ö/, "o" )
    str = str.gsub( /Ó/, "o" )
    str = str.gsub( /Ò/, "o" )
    str = str.gsub( /Ö/, "o" )
  end

  def variations_u_es( str )
    str = str.gsub( /ú/, "u" )
    str = str.gsub( /ù/, "u" )
    str = str.gsub( /ü/, "u" )
    str = str.gsub( /Ú/, "u" )
    str = str.gsub( /Ù/, "u" )
    str = str.gsub( /Ü/, "u" )
  end


class String

  def palindrome?

    # I do not know why this does not work
    #  str = str.gsub( /[áàäÁÀÄ]/, "a" ) #remove variations a-es
    #  str = str.gsub( /[éèëÉÈË]/, "e" ) #remove variations e-es
    #  str = str.gsub( /[íìïÍÌÏ]/, "i" ) #remove variations i-es
    #  str = str.gsub( /[óòöÓÒÖ]/, "o" ) #remove variations o-es
    #  str = str.gsub( /[úùüÚÙÜ]/, "u" ) #remove variations u-es

    str = self
    str = variations_a_es str #remove variations a-es
    str = variations_e_es str #remove variations e-es
    str = variations_i_es str #remove variations i-es
    str = variations_o_es str #remove variations o-es
    str = variations_u_es str #remove variations u-es

    str = str.gsub( /[\W_0-9]/, "" )

    if 0 == str.casecmp( str.reverse )
      true
    else
      false
    end
  end
end

module Enumerable
  def palindrome?
    self == self.reverse if self.respond_to? "reverse"
  end
end

